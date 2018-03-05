class LogFile < ApplicationRecord
  mount_uploader :directory, LogFileUploader

end
