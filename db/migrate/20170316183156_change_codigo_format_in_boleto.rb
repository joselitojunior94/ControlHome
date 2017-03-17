class ChangeCodigoFormatInBoleto < ActiveRecord::Migration[5.0]
  def change
  	change_column :boletos, :codigo, :string
  end
end
