class Response < ApplicationRecord
  belongs_to :user
  belongs_to :tree

  def self.res_search(search)
    if search
      Response.where(['text LIKE ?', "%#{search}%"])
    else
      Response.all
    end
  end
end
