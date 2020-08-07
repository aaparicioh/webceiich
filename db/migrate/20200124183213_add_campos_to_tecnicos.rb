class AddCamposToTecnicos < ActiveRecord::Migration[5.2]
  def change
    add_column :tecnicos, :nombres, :string
    add_column :tecnicos, :apPat, :string
    add_column :tecnicos, :apMat, :string
    add_column :tecnicos, :nombramiento, :string
    add_column :tecnicos, :categoria, :string
    add_column :tecnicos, :nivel, :string
    add_column :tecnicos, :definitividad, :string
    add_column :tecnicos, :estimulos, :string
    add_column :tecnicos, :sociedades, :string
    add_column :tecnicos, :adscripcion, :string
    add_column :tecnicos, :historiaAcademica, :string
    add_column :tecnicos, :correo, :string
    add_column :tecnicos, :telefono, :string
    add_column :tecnicos, :extension, :string
    add_column :tecnicos, :humanindex, :string
    add_column :tecnicos, :podcast, :string
    add_column :tecnicos, :foto, :string
    add_column :tecnicos, :curriculo, :text
    add_column :tecnicos, :lineasDeInvestigacion, :text
    add_column :tecnicos, :publicaciones, :text
    add_column :tecnicos, :docencia, :text
    add_column :tecnicos, :asociacionesCientificas, :text
    add_column :tecnicos, :ligasDeInteres, :text
  end
end
