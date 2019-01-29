class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column    :users, :last_name,       :string,     null: false
    add_column    :users, :first_name ,     :string,     null: false
    add_column    :users, :last_name_kana,  :string,     null: false
    add_column    :users, :first_name_kana, :string,     null: false
    add_column    :users, :phone_number,    :string,     null: false, unique: true
    add_reference :users, :address, foreign_key: true
    add_reference :users, :payment, foreign_key: true
    add_reference :users, :creditcard, foreign_key: true
  end
end
