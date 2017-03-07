class CreateApartamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :apartamentos do |t|
      t.string :local
      t.string :nome_proprietario
      t.integer :cpf_proprietario
      t.string :nome_morador
      t.string :senha

      t.timestamps
    end
  end
end
