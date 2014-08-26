
class Note < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  has_many :upvotes

  mount_uploader :file, FileUploader
end
