class AddSetIdToFlashcards < ActiveRecord::Migration
  def change
    add_reference :flashcards, :set_id, index: true
  end
end
