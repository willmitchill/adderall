class CreateNoteTable < ActiveRecord::Migration
  def change

      create_table :notes do |t|
      t.string :file
      t.references :course, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
