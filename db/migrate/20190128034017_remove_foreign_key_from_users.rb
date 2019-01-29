class RemoveForeignKeyFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :users, :address, foreign_key: true
    remove_reference :users, :payment, foreign_key: true
    remove_reference :users, :creditcard, foreign_key: true
  end
end
