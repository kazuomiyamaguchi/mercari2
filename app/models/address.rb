class Address < ApplicationRecord
  belongs_to :user, optional: true

  validates :prefecture_id, presence: true
  validates :city, presence: true
  validates :address, presence: true

end
