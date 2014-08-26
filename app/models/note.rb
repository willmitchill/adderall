
class Note < ActiveRecord::Base
  belongs_to :course
  has_many :note_upvotes, :foreign_key => :obj_id

  mount_uploader :note_file, NoteUploader
end
