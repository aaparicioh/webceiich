class AddCamposToInvestigadors < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadors, :nombres, :string
    add_column :investigadors, :apPat, :string
    add_column :investigadors, :apMat, :string
    add_column :investigadors, :nombramiento, :string
    add_column :investigadors, :categoria, :string
    add_column :investigadors, :nivel, :string
    add_column :investigadors, :definitividad, :string
    add_column :investigadors, :estimulos, :string
    add_column :investigadors, :sociedades, :string
    add_column :investigadors, :adscripcion, :string
    add_column :investigadors, :historiaAcademica, :string
    add_column :investigadors, :correo, :string
    add_column :investigadors, :telefono, :string
    add_column :investigadors, :extension, :string
    add_column :investigadors, :humanindex, :string
    add_column :investigadors, :podcast, :string
    add_column :investigadors, :foto, :string
    add_column :investigadors, :curriculo, :text
    add_column :investigadors, :lineasDeInvestigacion, :text
    add_column :investigadors, :publicaciones, :text
    add_column :investigadors, :docencia, :text
    add_column :investigadors, :asociacionesCientificas, :text
    add_column :investigadors, :ligasDeInteres, :text
  end
end
