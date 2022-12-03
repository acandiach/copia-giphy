class Publication < ApplicationRecord
  belongs_to :label
  #belongs_to :user, default: -> {Current.user}
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
end
