class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence :true
  validates :description, presence :true
  validates :rating, presence :true
  validates :price, presence :true
  validates :location, presence :true
end
