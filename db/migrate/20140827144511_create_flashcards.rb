class CreateFlashcards < ActiveRecord::Migration
  def change
    create_table :flashcards do |t|
      t.string :title
      t.string :content
      t.references :course, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
