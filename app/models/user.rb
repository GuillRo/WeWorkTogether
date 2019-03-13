class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviewer_reviews, class_name: "UserReview", foreign_key: "reviewer_id"
  has_many :reviewee_reviews, class_name: "UserReview", foreign_key: "reviewee_id"
  has_one :profile, dependent: :destroy
  has_many :workspaces, dependent: :destroy
  has_many :bookings
  has_many :workspace_reviews, through: :booking
  has_many :renter_payments, class_name: "Payment", foreign_key: "renter_id"
  has_many :owner_payments, class_name: "Payment", foreign_key: "owner_id"

  after_create :create_profile

  def create_profile
    Profile.create(user: self)
  end

end
