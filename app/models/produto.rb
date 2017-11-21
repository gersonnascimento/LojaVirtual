class Produto < ApplicationRecord
	
	validates_presence_of :nome, message: 'Por favor, preencha todos os campos.'
    validates_presence_of :quantidade, message: 'Por favor, preencha todos os campos.'
    validates_presence_of :valor, message: 'Por favor, preencha todos os campos.'

end
