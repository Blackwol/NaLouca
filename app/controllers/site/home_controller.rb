class Site::HomeController < SiteController

	def index
		@categories = Category.all
	end
end
