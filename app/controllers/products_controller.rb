class ProductsController < ApplicationController

  def index
    @products_new = Product.news
    @products_top = Product.top
  end

  def search #TODO maybe
    keywords = params[:keyword]
    @products = Product.where("products.name LIKE ? OR products.description LIKE ?", "%#{keywords}%", "%#{keywords}%") unless keywords.blank?
    render 'categories/show'
  end

  def show
    @product = Product.find params[:id]
    category = @product.category
    subcategory = @product.subcategory
    add_breadcrumb "Главная", :home_path
    add_breadcrumb category.name, category_path(category.name)
    add_breadcrumb subcategory.name, subcategory_path(category.name,subcategory.name) if subcategory
  end

  private

    def product_params
      params.require(:product).permit(:name, :category_id, :price)
    end
end

