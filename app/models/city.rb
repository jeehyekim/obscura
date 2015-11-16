class City < ActiveRecord::Base
	has_many :posts

  def features
    @kinds = ["Food & Bev", "Art", "Accomodations", "Misc."]
  end
end
