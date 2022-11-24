class Label < ApplicationRecord
  belongs_to :publication
 
  validates :name, presence: true
end
