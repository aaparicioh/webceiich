class Libro < ApplicationRecord

  belongs_to :tematica
  has_attached_file :img, styles: {libro: "130x177" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/

  def self.searchf(search,filtro)
    puts "valor controller libro #{search}"

    if search
      puts "#{filtro} y #{search}"
      if filtro.to_s == "Titulo"
        puts "#{filtro} d"
        Libro.all.where("descriptores like ? or titulo like ?","%"+search+"%","%"+search+"%")
      end


    else
      Libro.all
    end

  end

  def self.search(search)
    puts "valor controller libro #{search}"
    if search
        Libro.all.where("descriptores like ? or titulo like ?","%"+search+"%","%"+search+"%")
    else
      Libro.all
    end

  end


end
