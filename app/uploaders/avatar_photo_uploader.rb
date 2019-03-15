class AvatarPhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave



   def default_url
    "default-avatar.png"

  end
end
