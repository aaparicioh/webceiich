class CreateOrganocolegiadoInvestigadors < ActiveRecord::Migration[5.2]
  def change
    create_table :organocolegiado_investigadors do |t|
      t.references :investigador, foreign_key: true
      t.references :organocolegiado, foreign_key: true

      t.timestamps
    end
  end
end
