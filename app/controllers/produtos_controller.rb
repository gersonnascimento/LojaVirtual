class ProdutosController < ApplicationController
		def new
				@novo = Produto.new
		end

	def create
		@novo = Produto.new params.require(:produto).permit(:nome, :valor, :quantidade)
		@novo.save
		redirect_to root_url
	end

	def apagar
    	id = params[:id]
    	Produto.destroy id
    	redirect_to root_url
	end

	def comprar
    	id = params[:id]
    	p = Produto.find_by(:id => id)
    	p.quantidade -= 1
    	p.save
    	redirect_to root_url
	end
end





