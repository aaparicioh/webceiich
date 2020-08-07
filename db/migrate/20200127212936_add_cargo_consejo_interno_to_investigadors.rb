class AddCargoConsejoInternoToInvestigadors < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadors, :cargoConsejoInterno, :string
  end
end
