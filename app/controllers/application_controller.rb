class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  rescue_from ActionController::RoutingError, :with => :error_render_method
  protect_from_forgery with: :exception
  before_action :load_categories
  before_action :render_er
  rescue_from ActionController::RoutingError, with: -> { render_er  }

  private
	  def load_categories
		  @categories = Category.includes(:subcategories).all.order('name ASC')
		  @recommend_products = Product.where(recommend: true).limit(6)
		  @sliders = Slide.all
	  end

    def render_er
      # raise RoutingError

    end

end

