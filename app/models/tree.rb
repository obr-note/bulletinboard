class Tree < ApplicationRecord
  validates :title, presence:true
  
  belongs_to :user
  has_many :responses
  has_many :tree_categories, dependent: :destroy
  has_many :categories, through: :tree_categories
end
