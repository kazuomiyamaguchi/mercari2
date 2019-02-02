class Address < ApplicationRecord
  belongs_to :user, optional: true

  validates :prefecture_id, :city, :address, presence: true

end
