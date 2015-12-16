json.array!(@apartamentos) do |apartamento|
  json.extract! apartamento, :id, :numero, :torre, :piso, :nro_habitantes
  json.url apartamento_url(apartamento, format: :json)
end
