class User < ActiveRecord::Base
  has_many :courses
  has_many :notes
  has_secure_password

  # attr_accessor :password, :password_confirmation
end
