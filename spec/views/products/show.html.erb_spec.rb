require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :manufacturer => "Manufacturer",
      :model => "Model",
      :description => "Description",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Manufacturer/)
    rendered.should match(/Model/)
    rendered.should match(/Description/)
    rendered.should match(/Link/)
  end
end
