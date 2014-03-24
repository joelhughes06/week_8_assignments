class Comment < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  belongs_to :post
  has_many :post_categories
  has_many :posts, through: :post_categories

  validates :body, presence: true
end

