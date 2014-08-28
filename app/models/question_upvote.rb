class QuestionUpvote < Upvote
  belongs_to :question, :foreign_key => :obj_id

end
