class ChangeDatatypeNameOfPrefecture < ActiveRecord::Migration[5.0]
  def change
    change_column :prefectures, :name, :string
  end
end
