class Site::FoodDetailController < SiteController
	def show
		@categories = Category.all
		@food = Food.find(params[:id])
	end
end
