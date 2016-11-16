class CreateBodegas < ActiveRecord::Migration
  def change
    create_table :bodegas do |t|
      t.references :producto, index: true, foreign_key: true
      t.references :sucursal, index: true, foreign_key: true
      t.integer :stock

      t.timestamps null: false
    end
  end
end
