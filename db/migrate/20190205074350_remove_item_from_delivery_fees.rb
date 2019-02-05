class RemoveItemFromDeliveryFees < ActiveRecord::Migration[5.0]
  def change
    remove_reference :delivery_fees, :item, foreign_key: true
  end
end
