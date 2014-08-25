class RenameNoteFile < ActiveRecord::Migration
  def change
    rename_column :notes, :file, :note_file
  end
end
