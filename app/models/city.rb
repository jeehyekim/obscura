class City < ActiveRecord::Base
	has_many :posts
  KINDS = ["Food & Bev", "Art"]
end
