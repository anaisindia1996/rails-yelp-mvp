class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, true
  validates :rating, true, numericality: { only_integer: true }, :in { (0..5) }
end
