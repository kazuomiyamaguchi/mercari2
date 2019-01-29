class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :phone_number, :last_name, :first_name, :last_name_kana, :first_name_kana, presence: true
  validates :nickname, :phone_number, uniqueness: true

  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address
  has_one :creditcard, dependent: :destroy
  accepts_nested_attributes_for :creditcard
end
