class AddCategoryToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :category, :integer
  end
end
