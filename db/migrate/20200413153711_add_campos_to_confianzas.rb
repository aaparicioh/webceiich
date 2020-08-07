class AddCamposToConfianzas < ActiveRecord::Migration[5.2]
  def change
    add_column :confianzas, :nombres, :string
    add_column :confianzas, :apMat, :string
    add_column :confianzas, :apPat, :string
    add_column :confianzas, :area, :string
    add_column :confianzas, :funcion, :string
    add_column :confianzas, :telefono1, :string
    add_column :confianzas, :telefono2, :string
    add_column :confianzas, :extension1, :string
    add_column :confianzas, :extension2, :string
    add_column :confianzas, :fax, :string
    add_column :confianzas, :foto, :string
    add_column :confianzas, :cargo, :string
  end
end
