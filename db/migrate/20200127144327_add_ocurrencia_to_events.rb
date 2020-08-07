class AddOcurrenciaToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :ocurrencia, :integer
  end
end
