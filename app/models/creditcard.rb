class Creditcard < ApplicationRecord
  belongs_to :user, optional: true

  validates :number, :expiration_month, :expiration_year, presence: true
  validates :security_code, presence: true, format: { with: /\A\d{3,4}\z/ }

end
