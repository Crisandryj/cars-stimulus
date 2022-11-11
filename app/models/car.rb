class Car < ApplicationRecord
  has_many :car_variants
  has_many :variants, through: :car_variants
end
