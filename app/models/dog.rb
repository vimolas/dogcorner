class Dog < ApplicationRecord
  belongs_to :user
  belongs_to :breed
  has_many :appointments
end
