class Donation < ApplicationRecord
  TAGS = ["Alimentos", "Higiene Pessoal", "Produtos de Limpeza", "Diversos" ]
  belongs_to :order
  belongs_to :company
  has_many :items, dependent: :destroy
  validates :name, :amount, :description, presence: true
end
