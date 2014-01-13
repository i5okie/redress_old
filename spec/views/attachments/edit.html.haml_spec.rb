require 'spec_helper'

describe "attachments/edit" do
  before(:each) do
    @attachment = assign(:attachment, stub_model(Attachment,
      :name => "MyString",
      :description => "MyString",
      :filetype => "MyString",
      :filelocation => "MyString"
    ))
  end

  it "renders the edit attachment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attachment_path(@attachment), "post" do
      assert_select "input#attachment_name[name=?]", "attachment[name]"
      assert_select "input#attachment_description[name=?]", "attachment[description]"
      assert_select "input#attachment_filetype[name=?]", "attachment[filetype]"
      assert_select "input#attachment_filelocation[name=?]", "attachment[filelocation]"
    end
  end
end
