class Vehicle < ApplicationRecord
  validates :name presence, presence: true
  validates :status presence, presence: true, inclusion: { in: %w(pending paid checkouted)},
    message: "%{value} is not a valid status"
end
