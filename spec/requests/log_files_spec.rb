require 'rails_helper'

RSpec.describe "LogFiles", type: :request do
  describe "GET /log_files" do
    it "works! (now write some real specs)" do
      get log_files_path
      expect(response).to have_http_status(200)
    end
  end
end
