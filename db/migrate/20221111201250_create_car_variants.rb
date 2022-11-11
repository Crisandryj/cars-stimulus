class CreateCarVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :car_variants do |t|
      t.references :car, foreign_key: true
      t.references :variant, foreign_key: true
      t.timestamps
    end
  end
end
