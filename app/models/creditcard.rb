class Creditcard < ApplicationRecord
  belongs_to :user, optional: true

  validates :number, presence: true
  validates :expiration_month, presence: true
  validates :expiration_year, presence: true
  validates :security_code, presence: true, format: { with: /\A\d{3,4}\z/ }

end
