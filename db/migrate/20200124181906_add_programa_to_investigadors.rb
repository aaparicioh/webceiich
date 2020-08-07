class AddProgramaToInvestigadors < ActiveRecord::Migration[5.2]
  def change
    add_reference :investigadors, :programa, foreign_key: true
  end
end
