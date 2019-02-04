class AddColumnToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :name, :string
    add_column :items, :price, :integer
  end
end
