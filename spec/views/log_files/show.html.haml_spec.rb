require 'rails_helper'

RSpec.describe "log_files/show", type: :view do
  before(:each) do
    @log_file = assign(:log_file, LogFile.create!(
      :directory => "Directory"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Directory/)
  end
end
