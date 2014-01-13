require 'spec_helper'

describe "attachments/new" do
  before(:each) do
    assign(:attachment, stub_model(Attachment,
      :name => "MyString",
      :description => "MyString",
      :filetype => "MyString",
      :filelocation => "MyString"
    ).as_new_record)
  end

  it "renders new attachment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attachments_path, "post" do
      assert_select "input#attachment_name[name=?]", "attachment[name]"
      assert_select "input#attachment_description[name=?]", "attachment[description]"
      assert_select "input#attachment_filetype[name=?]", "attachment[filetype]"
      assert_select "input#attachment_filelocation[name=?]", "attachment[filelocation]"
    end
  end
end
