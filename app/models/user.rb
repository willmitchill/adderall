class User < ActiveRecord::Base
  has_many :courses
  has_many :notes

  attr_accessor :password, :password_confirmation
end
