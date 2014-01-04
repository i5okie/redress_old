require 'spec_helper'

describe "foos/show" do
  before(:each) do
    @foo = assign(:foo, stub_model(Foo,
      :blob => "Blob",
      :bleep => "Bleep"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Blob/)
    rendered.should match(/Bleep/)
  end
end
