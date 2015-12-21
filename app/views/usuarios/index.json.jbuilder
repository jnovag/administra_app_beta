json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :login, :clave, :correo
  json.url usuario_url(usuario, format: :json)
end
