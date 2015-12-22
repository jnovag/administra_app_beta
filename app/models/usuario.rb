class Usuario < ActiveRecord::Base
	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :login, presence: true, uniqueness: true
	validates :clave, presence: true, length: { minimum: 6, maximum: 12 }
	validates :correo, presence: true, uniqueness: true
	validates :correo, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	def self.authenticate(email = '', password = '')
		find_by("(correo = :mail or login = :mail) and clave = :clave", mail: email, clave: password)
	end
end
