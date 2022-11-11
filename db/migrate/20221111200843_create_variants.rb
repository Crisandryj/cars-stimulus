class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.string :type
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
