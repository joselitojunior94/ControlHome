class ChangeNameSenhaToApartamentoToMatriculaIptu < ActiveRecord::Migration[5.0]
  def change
  	rename_column :apartamentos, :senha, :matricula_iptu
  end
end
