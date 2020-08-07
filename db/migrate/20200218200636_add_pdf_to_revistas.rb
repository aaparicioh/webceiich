class AddPdfToRevistas < ActiveRecord::Migration[5.2]
  def self.up
      change_table :revistas do |r|
        r.attachment :pdf
      end
    end

    def self.down
      remove_attachment :revistas, :pdf
    end
end
