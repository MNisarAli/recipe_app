class Recipe < ApplicationRecord
#   has_many : details
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'

  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 1000 }

end
