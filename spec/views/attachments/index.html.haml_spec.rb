require 'spec_helper'

describe "attachments/index" do
  before(:each) do
    assign(:attachments, [
      stub_model(Attachment,
        :title => "Title",
        :description => "Description",
        :document => "Document"
      ),
      stub_model(Attachment,
        :title => "Title",
        :description => "Description",
        :document => "Document"
      )
    ])
  end

  it "renders a list of attachments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Document".to_s, :count => 2
  end
end
