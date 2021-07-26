class Order < ApplicationRecord
  has_many :donations
  has_many :items
  validates :name, :email, :phone, presence: true
end
