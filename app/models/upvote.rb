class Upvote < ActiveRecord::Base
  belongs_to :user

  # Every time an upvote is saved, update the upvote_count for the associated object.
  after_create :update_vote_count

  def update_vote_count
    # Bad, because it is vulnerable to race conditions.
    # current_count = note.upvote_count
    # note.update_attributes(upvote_count: current_count + 1)
    type.constantize.increment_counter(:upvote_count, obj_id)
  end
end
