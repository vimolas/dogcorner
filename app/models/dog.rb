class Dog < ApplicationRecord
  belongs_to :user
  belongs_to :breed
  has_many :appointments

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
