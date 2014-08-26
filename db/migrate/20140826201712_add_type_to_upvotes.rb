class AddTypeToUpvotes < ActiveRecord::Migration
  def change
    add_column :upvotes, :type, :string
  end
end
