class Profile < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, AvatarPhotoUploader

  before_validation :check_pic

  def check_pic
    self.photo = image_path('default-avatar.png') if self.photo.nil?
  end
end
