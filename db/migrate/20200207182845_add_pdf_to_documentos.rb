class AddPdfToDocumentos < ActiveRecord::Migration[5.2]
  def self.up
      change_table :documentos do |d|
        d.attachment :pdf
      end
    end

    def self.down
      remove_attachment :documentos, :pdf
    end
end
