class Actor < ApplicationRecord
  # validates :first_name, length: { minimum: 2 }
  # validates :last_name, length: { minimum: 2 }
  # validates :known_for, presence: true
  # validates :age, numericality: { greater_than: 13 }
  belongs_to :movie #returns hash of one single movie
end
