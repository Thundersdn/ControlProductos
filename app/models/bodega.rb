class Bodega < ActiveRecord::Base
  belongs_to :producto
  belongs_to :sucursal
end
