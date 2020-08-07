class AddActividadesInternasToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :actividades_internas, :text
  end
end
