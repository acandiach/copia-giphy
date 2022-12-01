class Publication < ApplicationRecord
  belongs_to :label

  validates :title, presence: true
  validates :description, presence: true
end
