require 'spec_helper'

describe "attachments/show" do
  before(:each) do
    @attachment = assign(:attachment, stub_model(Attachment,
      :name => "Name",
      :description => "Description",
      :filetype => "Filetype",
      :filelocation => "Filelocation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Filetype/)
    rendered.should match(/Filelocation/)
  end
end
