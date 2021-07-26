class Volunteer < ApplicationRecord
  belongs_to :order
  has_many :solicitations, dependent: :destroy
  validates :volunteer_work, :description, presence: true
end
