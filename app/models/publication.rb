class Publication < ApplicationRecord
  belongs_to :label
  has_and_belongs_to_many :labels
  #belongs_to :user, default: -> {Current.user}
  belongs_to :user
  has_many :boards
  has_many :users, through: :boards
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
end
