require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :description => "MyText",
      :model => "Model",
      :manufacturer => "Manufacturer",
      :link => "Link",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Model/)
    rendered.should match(/Manufacturer/)
    rendered.should match(/Link/)
    rendered.should match(/Category/)
  end
end
