require 'rails_helper'

RSpec.describe LogFile, type: :model do
  let(:logfile) { build :log_file }

  it "is valid" do
    expect(logfile).to be_valid
  end

end
