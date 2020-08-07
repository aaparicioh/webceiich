class AddCargoToInvestigadors < ActiveRecord::Migration[5.2]
  def change
    add_column :investigadors, :cargo, :string
  end
end
