class AddUpvoteCountQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :upvote_count, :integer, :default => 0
  end
end
