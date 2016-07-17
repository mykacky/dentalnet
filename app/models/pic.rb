class Pic < ActiveRecord::Base
  belongs_to :hospital
  mount_uploader :image, ImageUploader
end