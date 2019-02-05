class CreateConditions < ActiveRecord::Migration[5.0]
  def change
    create_table :conditions do |t|
      t.string :condtion, null: false
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
