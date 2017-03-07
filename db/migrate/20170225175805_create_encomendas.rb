class CreateEncomendas < ActiveRecord::Migration[5.0]
  def change
    create_table :encomendas do |t|
      t.string :tipo
      t.string :destinatario
      t.string :remetente
      t.date :data_chegada
      t.references :apartamento, foreign_key: true
      t.text :obs

      t.timestamps
    end
  end
end
