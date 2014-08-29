class CreateCardsets < ActiveRecord::Migration
  def change
    create_table :cardsets do |t|
      t.string :name
      t.references :flashcard, index: true

      t.timestamps
    end
  end
end
