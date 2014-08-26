
class Note < ActiveRecord::Base
  belongs_to :course
  has_many :upvotes
  validates :note_file, presence: true
  validates :title, presence: true
  mount_uploader :note_file, NoteUploader
end
