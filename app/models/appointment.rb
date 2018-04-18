class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  enum status: [ :pending, :confirmed, :declined ]

end
