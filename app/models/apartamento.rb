class Apartamento < ActiveRecord::Base
	include Export
	has_many :vehiculos
	has_many :residentes

	validates :numero, presence: true
	validates :torre, presence: true
	validates :piso, presence: true
	validates :area, numericality: { greater_than: 0 } 

	def valor_administracion
		area * 2300
	end

	def self.methods_to_export
		super + ['valor_administracion']
	end

end
