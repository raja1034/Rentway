class Parking < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user

  def address
   [street_address, city].compact.join(', ')
  end
end
