class RenameCondtionColumnToConditions < ActiveRecord::Migration[5.0]
  def change
    rename_column :conditions, :condtion, :condition
  end
end
