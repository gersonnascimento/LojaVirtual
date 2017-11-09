class UsuariosController < ApplicationController
	def login
		true
	end
	def new
		@novo = Usuario.new 
	end
	def create
		@novo = Usuario.new params.require(:usuario).permit(:nome, :password, :perfil)
		@novo.save
	end
end
