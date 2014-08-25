class CreateUpvotesTable < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.integer :user_id
      t.integer :note_id
      t.references :note, index: true


      t.timestamps
    end
  end
end
