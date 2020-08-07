class Principalelement < ApplicationRecord

  has_attached_file :img, styles: {principal: '540x100>'}, default_url: "/images/:style/missing.png"

  validates_attachment :img,
  :content_type => { :content_type => ["image/jpeg", "image/png"] },
  :size => { :in => 0..5.megabytes }
end
