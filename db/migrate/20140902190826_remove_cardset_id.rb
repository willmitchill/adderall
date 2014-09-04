class RemoveCardsetId < ActiveRecord::Migration
  def change
    remove_reference :flashcards, :set, index: true
  end
end
