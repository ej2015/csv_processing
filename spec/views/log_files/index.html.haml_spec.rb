require 'rails_helper'

RSpec.describe "log_files/index", type: :view do
  before(:each) do
    assign(:log_files, [
      LogFile.create!(
        :directory => "Directory"
      ),
      LogFile.create!(
        :directory => "Directory"
      )
    ])
  end

  it "renders a list of log_files" do
    render
    assert_select "tr>td", :text => "Directory".to_s, :count => 2
  end
end
