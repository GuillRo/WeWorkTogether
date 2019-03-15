class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :reviewer_reviews, class_name: "UserReview", foreign_key: "reviewer_id"
  # has_many :reviewee_reviews, class_name: "UserReview", foreign_key: "reviewee_id"
  has_one :profile, dependent: :destroy
  has_many :workspaces, dependent: :destroy
  has_many :bookings
  has_many :workspace_reviews, through: :bookings
  has_many :user_reviews, through: :bookings
  has_many :renter_payments, class_name: "Payment", foreign_key: "renter_id"
  has_many :owner_payments, class_name: "Payment", foreign_key: "owner_id"

  after_create :create_profile

  def create_profile
    Profile.create(user: self, bio: "")
    Dashboard.create(user: self)
  end

  def unreviewed_booking?(workspace)
    unreviewed = false

    bookings_of_workspace = workspace.bookings
    bookings_of_workspace.each do |booking|
      if booking.user_id == id && booking.status == "unreviewed"
        unreviewed = true
        break
      end
    end
    return unreviewed
  end

  def workspaces?
    return workspaces.length.positive?
  end

  def user_reviews?
    return user_reviews.length.positive?
  end

  def workspace_reviews?
    return workspace_reviews.length.positive?
  end

  def future_bookings?
    has_bookings = false
    bookings.each do |booking|
      if booking.status == "paid"
        has_bookings = true
        break
      end
    end
    return has_bookings
  end

  def past_bookings?
    has_bookings = false
    bookings.each do |booking|
      if booking.status == "unreviewed" || booking.status == "past"
        has_bookings = true
        break
      end
    end
    return has_bookings
  end

  def pending_bookings?
    has_bookings = false
    bookings.each do |booking|
      if booking.status == "waiting_for_payment"
        has_bookings = true
        break
      end
    end
    return has_bookings
  end
end
