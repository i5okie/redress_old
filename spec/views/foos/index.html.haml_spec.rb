require 'spec_helper'

describe "foos/index" do
  before(:each) do
    assign(:foos, [
      stub_model(Foo,
        :blob => "Blob",
        :bleep => "Bleep"
      ),
      stub_model(Foo,
        :blob => "Blob",
        :bleep => "Bleep"
      )
    ])
  end

  it "renders a list of foos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Blob".to_s, :count => 2
    assert_select "tr>td", :text => "Bleep".to_s, :count => 2
  end
end
