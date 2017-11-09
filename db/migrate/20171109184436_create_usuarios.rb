class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :perfil
      t.string :password

      t.timestamps
    end
  end
end
