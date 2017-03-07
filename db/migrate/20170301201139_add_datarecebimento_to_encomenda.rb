class AddDatarecebimentoToEncomenda < ActiveRecord::Migration[5.0]
  def change
    add_column :encomendas, :data_recebimento, :Date
  end
end
