class User < ActiveRecord::Base
  has_many :courses
  has_many :notes
  has_many :upvotes
  has_secure_password

  # attr_accessor :password, :password_confirmation
end
