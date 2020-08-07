class Revista < ApplicationRecord

  has_attached_file :img, styles: {revista: "130x177" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/

    has_attached_file :pdf
  validates_attachment :pdf, content_type: { content_type: "application/pdf" }



  def self.search(search)
    puts "valor controller #{search}"

    if search
      Revista.all.where("coleccion like ?", "%"+search+"%")
    else
      Revista.all
    end

  end
end
