class Category < ActiveRecord::Base
	has_many :foods
	validates_presence_of :name
end
