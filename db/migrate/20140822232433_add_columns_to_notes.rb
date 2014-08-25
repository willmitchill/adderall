class AddColumnsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :title, :string
    add_column :notes, :upvote_count, :integer, :default => 0
    add_column :notes, :date, :string
  end
end
