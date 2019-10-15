class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @prods = Product.all.where(disp: true)
    @products = @prods.sort_by{ |m| m.name }
  end

  def edit
  end

  def update
    @product = Product.update(product_params)
    redirect_to products_path
  end

  def destroy
    @product.destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name)
  end


end
