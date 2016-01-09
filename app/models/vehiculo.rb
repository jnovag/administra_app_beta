class Vehiculo < ActiveRecord::Base
	include Export
  belongs_to :apartamento

  validates :placa, presence: true, uniqueness: true
  validates :marca , presence: true
  validates :color, presence: true
  validates :descripcion, length: { maximum: 50}
end
