class RemoveItemFromSizes < ActiveRecord::Migration[5.0]
  def change
    remove_reference :sizes, :item, foreign_key: true
  end
end
