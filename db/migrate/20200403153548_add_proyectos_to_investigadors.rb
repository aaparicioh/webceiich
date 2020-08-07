class AddProyectosToInvestigadors < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadors, :proyectos, :string
  end
end
