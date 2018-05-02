class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 255}
  
  
  def all_microposts
    Micropost.all
  end
end
