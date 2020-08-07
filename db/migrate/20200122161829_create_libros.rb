class CreateLibros < ActiveRecord::Migration[5.2]
  def change
    create_table :libros do |t|
      t.string :clave
      t.string :autor
      t.string :coordinador
      t.string :coleccion
      t.string :edicion
      t.string :anio
      t.string :paginas
      t.string :isbn
      t.string :descriptores
      t.string :precio
      t.text :sinopsis
      t.date :fecha_publicacion

      t.timestamps
    end
  end
end
