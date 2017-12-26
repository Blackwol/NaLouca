class Food < ActiveRecord::Base
	belongs_to :category
	has_many :comments

	# scopes
	scope :by_category, -> (id, page) {where(category: id).page(page)}

	# Paperclip
	has_attached_file :picture, styles:{large: "300x200#", medium: "320x150#", thumb: "100x100#"}
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

	def second
    self[1]
  end

  def third
    self[2]
  end
end
