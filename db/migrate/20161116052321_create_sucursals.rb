class CreateSucursals < ActiveRecord::Migration
  def change
    create_table :sucursals do |t|
      t.string :nombre
      t.string :direccion

      t.timestamps null: false
    end
  end
end
