require 'spec_helper'

describe "videos/index" do
  before(:each) do
    assign(:videos, [
      stub_model(Video,
        :name => "Name",
        :description => "Description",
        :vidlink => "Vidlink"
      ),
      stub_model(Video,
        :name => "Name",
        :description => "Description",
        :vidlink => "Vidlink"
      )
    ])
  end

  it "renders a list of videos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Vidlink".to_s, :count => 2
  end
end
