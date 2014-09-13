class Flashcard < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  belongs_to :cardset
  validates :title, length: {minimum: 1, maximum: 120}, presence: true
  validates :content, length: {minimum: 1, maximum: 120}, presence: true
end
