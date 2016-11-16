class AddSucursalIdToUsuarios < ActiveRecord::Migration
  def change
  	add_column :usuarios, :sucursal_id, :integer
  	add_index :usuarios, :sucursal_id
  end
end
