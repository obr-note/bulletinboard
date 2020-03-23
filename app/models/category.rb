class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :tree_categories
  has_many :trees, through: :tree_categories
end
