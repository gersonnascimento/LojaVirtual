class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.integer :quantidade
      t.decimal :valor
      t.integer :categoria

      t.timestamps
    end
  end
end
