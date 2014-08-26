class User < ActiveRecord::Base
  has_many :courses
  has_many :notes
  has_many :upvotes
  has_secure_password
  validates :email, presence: true
  validates :password_digest, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  # attr_accessor :password, :password_confirmation
end
