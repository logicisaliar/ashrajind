class OilsController < ApplicationController
before_action :set_oil, only: [:show, :edit, :update, :destroy]

  def new
    @oil = Oil.new
  end

  def create
    @oil = Oil.new(oil_params)
    if @oil.save
      redirect_to oils_path
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @oils = Oil.all
  end

  def edit
  end

  def update
    @oil = Oil.update(oil_params)
    redirect_to oils_path
  end

  def destroy
    @oil.destroy
  end

  private

  def set_oil
    @oil = Oil.find(params[:id])
  end

  def oil_params
    params.require(:oil).permit(:name)
  end
end
