class AnswerUpvote < Upvote
  belongs_to :answer, :foreign_key => :obj_id

  after_create :increment_upvotes

  private
    def increment_upvotes
      a = Answer.find(self.obj_id)
      a.upvote_count += 1
      a.save
    end
end
