class HomeController < ApplicationController
  before_action :set_product, only: [:show]

  def index
  	@products = Product.all
    @servers = Category.where(name: 'Servers').first.products
    @computers = Category.where(name: 'Computers').first.products
    @printers = Category.where(name: 'Printers').first.products
    @pos = Category.where(name: 'Point-of-Sale').first.products
    @other = Category.where(name: 'Other').first.products

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :id, :manufacturer, :model, :category, :description, :link, :image, :remote_image_url, :tags, :apms)
    params.require(:category).permit(:name, :id)
  end
end