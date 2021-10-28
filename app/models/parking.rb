class Parking < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  def address
    [street_address, city].compact.join(', ')
  end
end
