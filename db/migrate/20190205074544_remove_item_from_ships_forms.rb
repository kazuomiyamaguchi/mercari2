class RemoveItemFromShipsForms < ActiveRecord::Migration[5.0]
  def change
    remove_reference :ships_forms, :item, foreign_key: true
  end
end
