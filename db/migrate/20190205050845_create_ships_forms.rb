class CreateShipsForms < ActiveRecord::Migration[5.0]
  def change
    create_table :ships_forms do |t|
      t.string :area, null: false
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
