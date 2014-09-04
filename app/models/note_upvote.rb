class NoteUpvote < Upvote
  belongs_to :note, :foreign_key => :obj_id

  after_create :increment_upvotes

  # Every time an upvote is saved, update the upvote_count for the associated object.
  private
    def increment_upvotes
      a = Note.find(self.obj_id)
      a.upvote_count += 1
      a.save
    end


end
