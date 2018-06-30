class Publication < ApplicationRecord
  mount_uploader :cover, CoverUploader
end
