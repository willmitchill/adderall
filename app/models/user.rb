class User < ActiveRecord::Base
  has_many :courses
  has_many :notes
  has_many :upvotes
  has_many :flashcards
  has_many :cardsets
  has_secure_password
  validates :email, presence: true
  validates :password, presence: true
  validates :password, length: {minimum: 6, maximum: 15}
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  # attr_accessor :password, :password_confirmation
end
