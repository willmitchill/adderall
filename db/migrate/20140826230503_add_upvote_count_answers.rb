class AddUpvoteCountAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :upvote_count, :integer, :default => 0
  end
end
