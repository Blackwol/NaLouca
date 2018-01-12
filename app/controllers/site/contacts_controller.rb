class Site::ContactsController < SiteController
	def index
		@categories = Category.all
	end
end
