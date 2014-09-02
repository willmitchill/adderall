class AddSetIdInFlashcard < ActiveRecord::Migration
  def change
    add_reference :flashcards, :set, index: true
  end
end
