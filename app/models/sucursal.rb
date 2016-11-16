class Sucursal < ActiveRecord::Base
	has_many :bodegas
	has_many :productos, through: :bodegas
	has_many :usuarios
end
