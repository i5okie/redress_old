require 'spec_helper'

describe "attachments/edit" do
  before(:each) do
    @attachment = assign(:attachment, stub_model(Attachment,
      :title => "MyString",
      :description => "MyString",
      :document => "MyString"
    ))
  end

  it "renders the edit attachment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attachment_path(@attachment), "post" do
      assert_select "input#attachment_title[name=?]", "attachment[title]"
      assert_select "input#attachment_description[name=?]", "attachment[description]"
      assert_select "input#attachment_document[name=?]", "attachment[document]"
    end
  end
end
