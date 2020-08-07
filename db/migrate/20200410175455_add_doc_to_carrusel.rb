class AddDocToCarrusel < ActiveRecord::Migration[5.2]
  def self.up
      change_table :carrusels do |d|
        d.attachment :doc
      end
    end

    def self.down
      remove_attachment :carrusels, :doc
    end
end
