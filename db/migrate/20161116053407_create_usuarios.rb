class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :rut
      t.string :nombre
      t.integer :cargo

      t.timestamps null: false
    end
  end
end
