class Event < ApplicationRecord

 has_many :carrusels
  has_attached_file :img, styles: {ceiich: "352x551"}, default_url: "/images/:style/missing.png"

  validates_attachment :img,
  :content_type => { :content_type => ["image/jpeg", "image/png"] },
  :size => { :in => 0..5.megabytes }

  has_attached_file :programa_completo
  validates_attachment :programa_completo, content_type: { content_type: "application/pdf" }

  def self.searchf(search,filtro)

    if search
    Event.all.where("titulo like ? or coordinacion like ?","%"+search+"%","%"+search+"%")
    else
      Event.all
    end

  end


    def self.search(search)

      if search
      Event.all.where("titulo like ? or coordinacion like ?","%"+search+"%","%"+search+"%")
      else
        Event.all
      end

    end


end
