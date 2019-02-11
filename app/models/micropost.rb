class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverces_of_favorites, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :likers, through: :reverces_of_favorites, class_name: 'Favorite', source: :user
  
  
end
