class Answer < ActiveRecord::Base
  belongs_to :note
  has_many :upvotes
end
