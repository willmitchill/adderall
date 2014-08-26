class Question < ActiveRecord::Base
  belongs_to :course
  has_many :answers
  has_many :upvotes
  validates :question, presence: true
end
