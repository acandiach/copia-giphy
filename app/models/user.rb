class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #has_many :publications, dependent: :destroy
  has_many :boards
  has_many :publications, through: :boards
  accepts_nested_attributes_for :publications

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

