class Producto < ActiveRecord::Base
	has_many :bodegas
	has_many :sucursals, through: :bodegas
end
