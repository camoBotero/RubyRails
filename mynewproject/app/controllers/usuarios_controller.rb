class UsuariosController < ApplicationController
  def new
  end  
  
  def create
    @usuario = Usuario.new usuario_params
    @usuario.save
  end  

  private
  def usuario_params
    params.require(:usuario).permit(:nombre, :apellido, :correo)
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def index
    @allUsuarios = Usuario.all
  end
end
