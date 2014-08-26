class Answer < ActiveRecord::Base
  belongs_to :note
  belongs_to :course

  has_many :answer_upvotes, :foreign_key => :obj_id


  validates :answer, presence: true



end
