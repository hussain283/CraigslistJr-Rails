class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    Category.create(params[:category])
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    
  end

  def destroy
    Category.destroy(params[:id])
    redirect_to categories_path
  end

end
