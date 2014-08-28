class ChangeUpvoteCountAnswers < ActiveRecord::Migration
  def change
    change_column :answers, :upvote_count, :integer, :default => 0
  end
end
