class CreateDeliveryFees < ActiveRecord::Migration[5.0]
  def change
    create_table :delivery_fees do |t|
      t.string :fee, null: false
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
