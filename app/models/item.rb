class Item < ApplicationRecord
  belongs_to :donation
  belongs_to :order
  validates :amount, presence: true
end
