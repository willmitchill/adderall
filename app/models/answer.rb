class Answer < ActiveRecord::Base
  belongs_to :note
  belongs_to :course
  has_many :upvotes
end
