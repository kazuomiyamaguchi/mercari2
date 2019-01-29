class CreateAddress < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string      :postcode, null: false
      t.references  :prefecture, null: false
      t.string      :city, null: false
      t.string      :address, null: false
      t.string      :building_name
      t.timestamps
    end
  end
end
