class Question < ActiveRecord::Base
  belongs_to :course
  has_many :answers, dependent: :destroy

  has_many :question_upvotes, :foreign_key => :obj_id

  validates :question, presence: true

end
