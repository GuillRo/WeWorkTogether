class BookingPlace < ApplicationRecord
  belongs_to :booking
  belongs_to :place
end
