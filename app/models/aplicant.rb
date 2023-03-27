class Aplicant < ApplicationRecord
  belongs_to :vacancy
  validates :name, presence: true
end
