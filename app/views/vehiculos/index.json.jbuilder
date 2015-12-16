json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :placa, :marca, :color, :descripcion, :apartamento_id
  json.url vehiculo_url(vehiculo, format: :json)
end
