class RemoveItemFromDeliveryDays < ActiveRecord::Migration[5.0]
  def change
    remove_reference :delivery_days, :item, foreign_key: true
  end
end
