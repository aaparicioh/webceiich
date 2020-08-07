class AddOrganosColegiadosToInvestigadors < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadors, :organosColegiados, :string
  end
end
