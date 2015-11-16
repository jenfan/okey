class ProductsController < InheritedResources::Base

	def index
		keywords = params[:keyword]
	  @products = Product.where("products.name LIKE ? OR products.description LIKE ?", "%#{keywords}%", "%#{keywords}%") unless keywords.blank?
	  render 'categories/show'
	end

	def show
		super do
			category = @product.category
			subcategory = @product.subcategory
		    add_breadcrumb "Главная", :root_path
		    add_breadcrumb category.name, category_path(category.name)
		    add_breadcrumb subcategory.name, subcategory_path(category.name,subcategory.name) if subcategory
		    add_breadcrumb @product.name, product_path(@product)
	  end
	end

  private

    def product_params
      params.require(:product).permit(:name, :category_id, :price)
    end
end

