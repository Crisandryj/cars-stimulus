class Variant < ApplicationRecord
  has_many :car_variants
  has_many :cars, through: :car_variants
end
