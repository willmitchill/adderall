class NoteUpvote < Upvote
  belongs_to :note, :foreign_key => :obj_id
end
