class Answer < ActiveRecord::Base
  belongs_to :note
  belongs_to :course
  has_many :upvotes
  validates :answer, presence: true
  

end
