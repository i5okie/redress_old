require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :description => "MyText",
        :model => "Model",
        :manufacturer => "Manufacturer",
        :link => "Link",
        :category => "Category"
      ),
      stub_model(Product,
        :name => "Name",
        :description => "MyText",
        :model => "Model",
        :manufacturer => "Manufacturer",
        :link => "Link",
        :category => "Category"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
