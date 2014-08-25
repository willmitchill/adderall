
class Note < ActiveRecord::Base
  belongs_to :course
  has_many :upvotes

  mount_uploader :file, FileUploader
end
