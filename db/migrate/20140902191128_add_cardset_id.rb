class AddCardsetId < ActiveRecord::Migration
  def change
    add_reference :flashcards, :cardset, index: true
  end
end
