class Post < ActiveRecord::Base
  belongs_to :category
  
	validates :title, presence: true
	validates :link, presence: true
	validates :excerpt, length:{
		maximum: 140,
		too_long: "Maximum length must be 140 characters"
	}
  validates :category_id, presence: true
end
