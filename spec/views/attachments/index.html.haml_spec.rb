require 'spec_helper'

describe "attachments/index" do
  before(:each) do
    assign(:attachments, [
      stub_model(Attachment,
        :name => "Name",
        :description => "MyText",
        :filetype => "Filetype",
        :filelocation => "Filelocation"
      ),
      stub_model(Attachment,
        :name => "Name",
        :description => "MyText",
        :filetype => "Filetype",
        :filelocation => "Filelocation"
      )
    ])
  end

  it "renders a list of attachments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Filetype".to_s, :count => 2
    assert_select "tr>td", :text => "Filelocation".to_s, :count => 2
  end
end
