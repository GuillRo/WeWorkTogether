class Booking < ApplicationRecord
  has_one :workspace_review
  has_one :user_review
  has_many :booking_places
  has_one :payment
  belongs_to :user
  has_many :places, through: :booking_places

  monetize :price_cents

  validates :beginning_date, presence: true
  validates :end_date, presence: true

  def find_workspace
    places.first&.workspace
  end

  def set_status
    if status.nil?
      self.status = "paid"
    elsif status == "paid"
      self.status = "unreviewed"
    elsif status == "unreviewed"
      self.status = "past"
    end
  end

  def calculate_time
    return (end_date - beginning_date).to_i + 1
  end
end
