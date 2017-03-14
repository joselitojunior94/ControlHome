class ChangeCpfFormatInApartamento < ActiveRecord::Migration[5.0]
  def change
  	change_column :apartamentos, :cpf_proprietario, :string
  end
end
