class QuestionUpvote < Upvote
  belongs_to :question, :foreign_key => :obj_id

  after_create :increment_upvotes


end
