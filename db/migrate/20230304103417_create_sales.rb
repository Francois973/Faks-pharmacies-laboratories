class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :pharmacy, null: false, foreign_key: true
      t.references :pharmacy_product, null: false, foreign_key: true
      t.integer :quantity
      t.integer :price
      t.datetime :date

      t.timestamps
    end
  end
end
