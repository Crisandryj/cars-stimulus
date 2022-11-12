class Car < ApplicationRecord
  has_many :car_variants
  has_many :variants, through: :car_variants

  accepts_nested_attributes_for :variants
end
