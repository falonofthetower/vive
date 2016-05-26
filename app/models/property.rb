class Property < ActiveRecord::Base
  mount_uploader :image, PropertyImageUploader
end
