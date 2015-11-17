class Post < ActiveRecord::Base
	belongs_to :feature
	belongs_to :city
	belongs_to :user

end
