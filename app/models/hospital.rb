class Hospital < ActiveRecord::Base
  has_many :pics
  has_many :reps
  accepts_nested_attributes_for :pics, allow_destroy: true
  accepts_nested_attributes_for :reps, allow_destroy: true

end
