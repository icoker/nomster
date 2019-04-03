class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, too_short: " must be at least %{count} characters." }
  validates :address, :description, presence: true
end
