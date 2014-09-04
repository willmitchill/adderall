class Upvote < ActiveRecord::Base
  belongs_to :user

  # Every time an upvote is saved, update the upvote_count for the associated object.



end
