class Programa < ApplicationRecord
  has_many :investigadors, dependent: :destroy
end
