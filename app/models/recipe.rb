class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods

  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 1000 }
end
