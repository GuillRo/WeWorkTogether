class Payment < ApplicationRecord
  belongs_to :booking
  belongs_to :renter, class_name: "User"
  belongs_to :owner, class_name: "User"

  monetize :amount_cents
end
