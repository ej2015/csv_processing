require 'rails_helper'

RSpec.describe "log_files/new", type: :view do
  before(:each) do
    assign(:log_file, LogFile.new(
      :directory => "MyString"
    ))
  end

  it "renders new log_file form" do
    render

    assert_select "form[action=?][method=?]", log_files_path, "post" do

      assert_select "input[name=?]", "log_file[directory]"
    end
  end
end
