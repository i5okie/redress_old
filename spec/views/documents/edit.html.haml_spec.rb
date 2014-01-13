require 'spec_helper'

describe "documents/edit" do
  before(:each) do
    @document = assign(:document, stub_model(Document,
      :name => "MyString",
      :description => "MyString",
      :filetype => "MyString",
      :filelocation => "MyString"
    ))
  end

  it "renders the edit document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", document_path(@document), "post" do
      assert_select "input#document_name[name=?]", "document[name]"
      assert_select "input#document_description[name=?]", "document[description]"
      assert_select "input#document_filetype[name=?]", "document[filetype]"
      assert_select "input#document_filelocation[name=?]", "document[filelocation]"
    end
  end
end
