class Category < ApplicationRecord
  has_many :tree_categories
  has_many :trees, through: :tree_categories
end
