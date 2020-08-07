class ChangeColumnToNovedadesdibliogracias < ActiveRecord::Migration[5.2]
  def change
    rename_column :novedadesbibliograficas, :link, :nombre_pdf
 end
end
