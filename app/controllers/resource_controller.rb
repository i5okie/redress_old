class ResourceController < ApplicationController



  def index
  	@products = Product.all

  	respond_to do |format|
  		format.html
  	end

  end

  def show
  end

end