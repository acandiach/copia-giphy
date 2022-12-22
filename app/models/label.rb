class Label < ApplicationRecord
  #has_many :publications, dependent: :destroy
  has_and_belongs_to_many :publications
 
  validates :name, presence: true
end
