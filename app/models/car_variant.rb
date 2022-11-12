class CarVariant < ApplicationRecord
  belongs_to :car, inverse_of: :car_variants
  belongs_to :variant, inverse_of: :car_variants
end
