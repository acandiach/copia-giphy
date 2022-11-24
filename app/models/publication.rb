class Publication < ApplicationRecord
  has_many :label, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
end
