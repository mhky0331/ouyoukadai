class PostImage < ApplicationRecord

has_many :favorites, dependent: :destroy

def favorited_by?(user)
   favorites.exists?(user_id: user.id)
end
end
