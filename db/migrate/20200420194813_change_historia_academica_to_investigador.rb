class ChangeHistoriaAcademicaToInvestigador < ActiveRecord::Migration[5.2]
  def up
    change_column :investigadors, :historiaAcademica, :text
  end

  def down
    change_column :investigadors, :historiaAcademica, :string
  end
end
