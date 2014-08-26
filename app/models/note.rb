
class Note < ActiveRecord::Base
  belongs_to :course

  has_many :note_upvotes, :foreign_key => :obj_id


  validates :note_file, presence: true
  validates :title, presence: true

  mount_uploader :note_file, NoteUploader
end
