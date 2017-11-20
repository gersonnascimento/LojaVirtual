class ProdutosController < ApplicationController
		

		def verificaEstoque(id)
			p = Produto.find_by(:id => id)
			if p.quantidade >0 then
				true
			else
				false
			end
		end

		def new
				@novo = Produto.new
		end

	def create
		@novo = Produto.new params.require(:produto).permit(:nome, :valor, :quantidade)
		@novo.save
		redirect_to produtos_url
	end

	def apagar
    	id = params[:id]
    	Produto.destroy id
    	redirect_to produtos_url
	end

	def comprar
    	id = params[:id]
    	p = Produto.find_by(:id => id)
    	if verificaEstoque(id) then
    	p.quantidade -= 1
    	p.save
    	redirect_to root_url
    	true
    	else redirect_to root_url
     	false
    	end
	end

	def alterar
		id = params[:id]
		@p = Produto.find_by(:id => id)
	end

	def salvarAlteracao
		@p.save
	end
end





