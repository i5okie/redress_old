require 'spec_helper'

describe "videos/edit" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :name => "MyString",
      :description => "MyText",
      :source => "MyString"
    ))
  end

  it "renders the edit video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", video_path(@video), "post" do
      assert_select "input#video_name[name=?]", "video[name]"
      assert_select "textarea#video_description[name=?]", "video[description]"
      assert_select "input#video_source[name=?]", "video[source]"
    end
  end
end
