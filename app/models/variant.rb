class Variant < ApplicationRecord
  has_many :car_variants, inverse_of: :variant
  has_many :cars, through: :car_variants
end
