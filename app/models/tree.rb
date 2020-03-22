class Tree < ApplicationRecord
  validates :title, presence:true
  
  belongs_to :user
  has_many :responses
  has_many :tree_categories, dependent: :destroy
  has_many :categories, through: :tree_categories

  def self.tr_search(search)
    if search
      Tree.where(['title LIKE ?', "%#{search}%"])
    else
      Tree.all
    end
  end
end
