require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :manufacturer => "MyString",
      :model => "MyString",
      :description => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "input#product_manufacturer[name=?]", "product[manufacturer]"
      assert_select "input#product_model[name=?]", "product[model]"
      assert_select "input#product_description[name=?]", "product[description]"
      assert_select "input#product_link[name=?]", "product[link]"
    end
  end
end
