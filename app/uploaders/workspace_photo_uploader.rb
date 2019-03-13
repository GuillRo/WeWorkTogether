class WorkspacePhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

end
