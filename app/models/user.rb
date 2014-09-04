class User < ActiveRecord::Base
  has_many :courses
  has_many :notes
  has_many :upvotes
  has_many :flashcards
  has_many :cardsets
  has_secure_password
  validates :email, presence: true
  validates :password_digest, presence: true
  validates :password_digest, length: {minimum: 3, maximum: 15}
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  # attr_accessor :password, :password_confirmation
end
