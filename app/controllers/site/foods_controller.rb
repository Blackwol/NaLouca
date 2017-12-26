class Site::FoodsController < SiteController

	def index
		@categories = Category.all
		@category = Category.find(params[:format])
    	@foods = Food.by_category(@category, params[:page])
	end
end
