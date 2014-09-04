class Cardset < ActiveRecord::Base
  has_many :flashcards
  belongs_to :user
  validates :name, presence: true

end
