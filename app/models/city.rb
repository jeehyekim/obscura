class City < ActiveRecord::Base
	has_many :posts
  has_many :features

  # def features
  #   @kinds = ["Food & Bev", "Art", "Accomodations", "Misc."]
  # end

  after_create :create_features
  def create_features
    self.features << Feature.create(title: "Food & Bev")
    self.features << Feature.create(title: "Art")
    self.features << Feature.create(title: "Accomodations")
    self.features << Feature.create(title: "Micellaneous")
  end
end
