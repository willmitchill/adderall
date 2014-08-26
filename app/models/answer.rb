class Answer < ActiveRecord::Base
  belongs_to :note
  has_many :upvotes
  validates :answer, presence: true
  

end
