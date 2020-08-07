class CreateNovedadesbibliograficas < ActiveRecord::Migration[5.2]
  def change
    create_table :novedadesbibliograficas do |t|
      t.string :mes
      t.string :anio
      t.string :link

      t.timestamps
    end
  end
end
