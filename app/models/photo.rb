class Photo < ApplicationRecord
  belongs_to :workspace
  mount_uploader :photo, WorkspacePhotoUploader
end
