class Booking < ApplicationRecord
  has_one :workspace_review
  has_one :user_review
  has_many :booking_places
  has_one :payment
  belongs_to :user
  has_many :places, through: :booking_places

  validates :beginning_date, presence: true
  validates :end_date, presence: true

  def find_workspace
    places.first&.workspace
  end

  def set_status
    if status.nil?
      self.status = "waiting_for_payment"
    elsif status == "waiting_for_payment"
      self.status = "paid"
    elsif status == "paid"
      self.status = "unreviewed"
    elsif status == "unreviewed"
      self.status = "past"
    end
  end
end
