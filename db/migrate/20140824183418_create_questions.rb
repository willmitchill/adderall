class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :quesiton
      t.integer :upvote_count
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
