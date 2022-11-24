class Label < ApplicationRecord
  has_many :publication, dependent: :destroy
 
  validates :name, presence: true
end
