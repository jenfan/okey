class SubcategoriesController < ApplicationController

  def show
    @subcategory = Subcategory.where(name: params[:subcategory_id]).first
    @category = @subcategory.category
    @subcategories = @category.subcategories
    @products = @subcategory.products
    add_breadcrumb "Главная", :home_path
    add_breadcrumb @category.name, category_path(@category.name)
    add_breadcrumb @subcategory.name, subcategory_path(@category.name,@subcategory.name)
    render 'products/index'
  end

end
