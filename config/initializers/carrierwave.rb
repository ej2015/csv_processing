# NullStorage provider for CarrierWave for use in tests with fixtures.  Doesn't actually
# upload or store files but allows test to pass as if files were stored and
# the use of fixtures.
class NullStorage
  attr_reader :uploader

  def initialize(uploader)
    @uploader = uploader
  end

  def identifier
    uploader.filename
  end

  def store!(_file)
    true
  end

  def retrieve!(_identifier)
    true
  end
end

if Rails.env.development?
	CarrierWave.configure do |config|
    config.storage = :file
  end
elsif Rails.env.production? 
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'                          # required
    config.fog_credentials = {
      provider:              'AWS',                          # required
      aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],       # required
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],   # required
      region:                ENV["AWS-REGION"]               # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = ENV["S3_BUCKET_NAME"]                          #'log-file-6550'                                   # required
    #config.fog_public     = false                                                 # optional, defaults to true
    #config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
    config.storage = :fog
  end

else
  CarrierWave.configure do |config|
    config.storage = NullStorage
    config.enable_processing = false
  end
end



