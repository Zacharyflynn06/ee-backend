class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all

    render json: ProductSerializer.new(@products)
  end

  # GET /products/1
  def show
    render json: ProductSerializer.new(@product)
  end

  # POST /products
  def create
    
    @product = Product.new(product_params)

    if @product.save
      render json: ProductSerializer.new(@product), status: :created, location: @product
    else
      render json: @product.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: ProductSerializer.new(@product)
    else
      render json: @product.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    if @product.destroy
      render json: ProductSerializer.new(@product)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.permit(:id, :name, :price, :description, :image)
    end
end
