class CategoriesController < ApplicationController
  def index
    @categories = current_user.categories
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    @category.name = params[:name]
    @category.user_id = params[:user_id]
    @category.order = params[:order]

    if @category.save
      redirect_to "/categories", :notice => "Category created successfully."
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    @category.name = params[:name]
    @category.user_id = params[:user_id]
    @category.order = params[:order]

    if @category.save
      redirect_to "/categories", :notice => "Category updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy

    redirect_to "/categories", :notice => "Category deleted."
  end
end
