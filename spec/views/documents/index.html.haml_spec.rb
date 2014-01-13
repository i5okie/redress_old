require 'spec_helper'

describe "documents/index" do
  before(:each) do
    assign(:documents, [
      stub_model(Document,
        :name => "Name",
        :description => "Description",
        :filetype => "Filetype",
        :filelocation => "Filelocation"
      ),
      stub_model(Document,
        :name => "Name",
        :description => "Description",
        :filetype => "Filetype",
        :filelocation => "Filelocation"
      )
    ])
  end

  it "renders a list of documents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Filetype".to_s, :count => 2
    assert_select "tr>td", :text => "Filelocation".to_s, :count => 2
  end
end
