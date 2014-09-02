class ChangeSetIdInFlashcard < ActiveRecord::Migration
  def change
    remove_reference :flashcards, :set_id, index: true
  end
end
