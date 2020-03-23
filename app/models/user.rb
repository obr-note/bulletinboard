class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: true
  has_secure_password
  has_many :trees
  has_many :responses
end
