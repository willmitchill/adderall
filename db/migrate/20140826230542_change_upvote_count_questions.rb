class ChangeUpvoteCountQuestions < ActiveRecord::Migration
  def change
    change_column :questions, :upvote_count, :integer, :default => 0
  end
end
