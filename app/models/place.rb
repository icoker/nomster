class Place < ApplicationRecord
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :photos, :dependent => :destroy

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 3, too_short: " must be at least %{count} characters." }
  validates :address, :description, presence: true
end
