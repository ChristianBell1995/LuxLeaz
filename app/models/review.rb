class Review < ApplicationRecord
  belongs_to :booking
  validates :title, presence :true
  validates :description, presence :true
  validates :rating, presence :true, inclusion: { in: [1, 2, 3, 4, 5] }
end
