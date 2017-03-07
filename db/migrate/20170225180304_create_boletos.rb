class CreateBoletos < ActiveRecord::Migration[5.0]
  def change
    create_table :boletos do |t|
      t.references :apartamento, foreign_key: true
      t.integer :codigo
      t.float :valor_boleto
      t.float :juros_boleto
      t.date :data_emissao
      t.date :data_vencimento
      t.boolean :status

      t.timestamps
    end
  end
end
