class CategoriesController < ApplicationController
  
  def show
    @category = Category.where(name: params[:category_id]).first
    @products = @category.products
    @subcategories = @category.subcategories
    add_breadcrumb "Главная", :root_path
    add_breadcrumb @category.name, category_path(@category.name)
  end

end
