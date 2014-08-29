class AddUserIdToCardset < ActiveRecord::Migration
  def change
    add_reference :cardsets, :user, index: true
  end
end
