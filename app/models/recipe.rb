class Recipe < ApplicationRecord
#   has_many : details
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
end
