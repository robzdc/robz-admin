class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :link, presence: true
	validates :excerpt, length:{
		maximum: 140,
		too_long: "Maximum length must be 140 characters"
	}
	validates :category, presence: true
end
