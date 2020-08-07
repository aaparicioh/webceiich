class RemoveProgramaCompletoFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :programa_completo, :string
  end
end
