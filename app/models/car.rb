class Car < ApplicationRecord
  has_many :car_variants, inverse_of: :car
  has_many :variants, through: :car_variants

  validates :name, presence: true

  accepts_nested_attributes_for :variants
end
