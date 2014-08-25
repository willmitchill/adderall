class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.integer :question_id
      t.integer :user_id
      t.integer :upvote_count

      t.timestamps
    end
  end
end
