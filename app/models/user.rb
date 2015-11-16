class User < ActiveRecord::Base
  has_secure_password

  has_many :posts

  attr_accessor :confirmation_code

  validates :email, presence: true, uniqueness: true, length: {minimum: 6}, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
  validates :password, presence: true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
