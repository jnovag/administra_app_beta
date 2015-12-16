json.array!(@residentes) do |residente|
  json.extract! residente, :id, :nombre, :apellido, :telefono, :fecha_nacimiento, :identificacion, :apartamento_id
  json.url residente_url(residente, format: :json)
end
