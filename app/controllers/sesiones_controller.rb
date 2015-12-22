class SesionesController < ApplicationController
  def new
  end

  def create
  	usuario = Usuario.authenticate(sesion_params[:mail], sesion_params[:clave])
  	if  usuario
  		cookies[:user_id] = usuario.id
  		redirect_to  root_path
  	else
  		flash[:error] = 'Error en los datos de inicio de sesión'
  		render :new
  	end
  end

  private
  def sesion_params
  	params.require(:sesion).permit(:mail, :clave)
  end
end
