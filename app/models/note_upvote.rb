class NoteUpvote < Upvote
  belongs_to :note, :foreign_key => :obj_id

  # Every time an upvote is saved, update the upvote_count for the associated object.



end
