class AddEntregueToEncomenda < ActiveRecord::Migration[5.0]
  def change
    add_column :encomendas, :entregue, :boolean
  end
end
