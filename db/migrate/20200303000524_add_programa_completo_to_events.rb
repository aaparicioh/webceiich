class AddProgramaCompletoToEvents < ActiveRecord::Migration[5.2]
  def self.up
      change_table :events do |e|
        e.attachment :programa_completo
      end
    end

    def self.down
      remove_attachment :events, :programa_completo
    end
end
