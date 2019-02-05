class CreateDeliveryDays < ActiveRecord::Migration[5.0]
  def change
    create_table :delivery_days do |t|
      t.string :day, null: false
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
