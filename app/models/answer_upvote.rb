class AnswerUpvote < Upvote
  belongs_to :answer, :foreign_key => :obj_id
end
