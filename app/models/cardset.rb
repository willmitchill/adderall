class Cardset < ActiveRecord::Base
  has_many :flashcards, dependent: :destroy
  belongs_to :user
  
  validates :name, presence: true

end
