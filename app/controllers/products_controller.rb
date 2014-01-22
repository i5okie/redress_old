class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @attachments = @product.attachments
  end

  # GET /products/new
  def new
    @product = Product.new
    @attached = Attached.all
    @product.attached.build
    @product.documented.build
  end

  # GET /products/1/edit
  def edit
    @attachments = Attachment.all
    @attached = Attached.all
    @product.attached.build
    @product.documented.build
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to [:edit, @product], notice: 'Product was successfully updated.' }
        format.json { response_with_bip(@product) }
      else
        format.html { render action: 'edit' }
        format.json { response_with_bip(@product) }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(  :name, 
                                        :description, 
                                        :model, 
                                        :manufacturer, 
                                        :link, 
                                        :image, 
                                        :tags, 
                                        :apms, 
                                        :tag_list, 
                                        :apm_list, 
                                        :category_id, 
                                        attachments_attributes: [:file, :id, :_destroy], 
                                        documents_attributes: [:doc, :id, :_destroy]
                                        )
    end
end
