class CreateVagas < ActiveRecord::Migration[5.0]
  def change
    create_table :vagas do |t|
      t.string :local
      t.references :apartamento, foreign_key: true
      t.string :modelo_carro
      t.string :car_carro
      t.string :placa_carro

      t.timestamps
    end
  end
end
