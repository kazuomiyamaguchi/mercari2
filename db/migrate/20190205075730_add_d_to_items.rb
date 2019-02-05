class AddDToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :size, foreign_key: true, null: false
    add_reference :items, :condition, foreign_key: true, null: false
    add_reference :items, :delivery_fee, foreign_key: true, null: false
    add_reference :items, :delivery_day, foreign_key: true, null: false
    add_reference :items, :ships_forms, foreign_key: true, null: false
  end
end
