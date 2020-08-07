class Investigador < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :investigacionprograma, optional: true
  has_many :organocolegiado_investigadors
  has_many :organocolegiados, through: :organocolegiado_investigadors
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:timeoutable

         def self.search(search)
           puts "valor controller #{search}"

           if search
           Investigador.all.where("nombres like ?", "%"+search+"%")
           else

           end

         end
end
