class User < ApplicationRecord
  has_many :foods

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
