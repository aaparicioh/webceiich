class AddDocToDocumentos < ActiveRecord::Migration[5.2]
  def self.up
      change_table :documentos do |d|
        d.attachment :doc
      end
    end

    def self.down
      remove_attachment :documentos, :doc
    end
end
