class Usuario < ActiveRecord::Base
	include Export
	validates :nombre, presence: true
	validates :apellido, presence: true
	validates :login, presence: true, uniqueness: true
	validates :correo, presence: true, uniqueness: true
	validates :correo, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	has_secure_password

	after_update :send_updated_mail
	after_create :send_created_mail


	def send_created_mail
	  UserMailer.created(id).deliver
	end

	def send_updated_mail
	  UserMailer.updated(id).deliver
	end

	def self.authenticate(email = '', password = '')
		user = find_by("correo = :mail or login = :mail", mail: email)
		user && user.authenticate(password)
	end
end
