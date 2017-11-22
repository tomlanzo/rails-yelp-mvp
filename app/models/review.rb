class Review < ApplicationRecord

  RATE = [0, 1, 2, 3, 4, 5]

  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :restaurant_id, presence: true
  validates :rating, numericality: true, inclusion: {in: RATE}
end
