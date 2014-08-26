class RenameUpvoteNoteid < ActiveRecord::Migration
  def change
    rename_column :upvotes, :note_id, :obj_id
  end

  def up
    add_column :upvotes, :type, :string
  end
end
