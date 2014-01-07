require 'spec_helper'

describe "attachments/show" do
  before(:each) do
    @attachment = assign(:attachment, stub_model(Attachment,
      :title => "Title",
      :description => "Description",
      :document => "Document"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Document/)
  end
end
