class StartController < ApplicationController
	def verificaProdutos
		@todos = Produto.all
	end
	
	def index
		verificaProdutos
	end

	def admin
		verificaProdutos
	end

end
