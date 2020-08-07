class Organocolegiado < ApplicationRecord
  has_many :organocolegiado_investigadors
  has_many :investigadors, through: :organocolegiado_investigadors
end
