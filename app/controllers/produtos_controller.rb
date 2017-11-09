class ProdutosController < ApplicationController
		def new
				@novo = Produto.new
		end

	def create
		@novo = Produto.new params.require(:produto).permit(:nome, :valor, :quantidade)
		@novo.save
	end
end





