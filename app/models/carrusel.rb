class Carrusel < ApplicationRecord

  
  has_attached_file :doc, :optional => true
  validates_attachment :doc, content_type: { content_type: "application/pdf" }
  has_attached_file :img, styles: {ceiich: "1960x600"}, default_url: "/images/:style/missing.png"
validates_attachment :img,
:content_type => { :content_type => ["image/jpeg", "image/png"] },
:size => { :in => 0..2.megabytes }
end
