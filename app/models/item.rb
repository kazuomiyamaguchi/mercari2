class Item < ApplicationRecord
  has_many      :images
  belongs_to    :category
  has_one       :size
  has_one       :brand
  has_one       :condition
  has_one       :delivery_fee
  has_one       :ships_form
  has_one       :delivery_day

end
