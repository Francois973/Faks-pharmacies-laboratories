class CreateLaboratoryProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratory_products do |t|
      t.references :laboratory, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.integer :production_cost
      t.integer :average_price

      t.timestamps
    end
  end
end
