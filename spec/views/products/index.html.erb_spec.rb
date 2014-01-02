require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :manufacturer => "Manufacturer",
        :model => "Model",
        :description => "Description",
        :link => "Link"
      ),
      stub_model(Product,
        :name => "Name",
        :manufacturer => "Manufacturer",
        :model => "Model",
        :description => "Description",
        :link => "Link"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
