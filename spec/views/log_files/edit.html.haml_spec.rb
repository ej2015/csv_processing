require 'rails_helper'

RSpec.describe "log_files/edit", type: :view do
  before(:each) do
    @log_file = assign(:log_file, LogFile.create!(
      :directory => "MyString"
    ))
  end

  it "renders the edit log_file form" do
    render

    assert_select "form[action=?][method=?]", log_file_path(@log_file), "post" do

      assert_select "input[name=?]", "log_file[directory]"
    end
  end
end
