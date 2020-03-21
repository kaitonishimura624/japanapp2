class Post < ApplicationRecord
  validates :title, :body, :image, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :comments
  has_many :likes, dependent: :destroy

  def like_user(user_id)
  likes.find_by(user_id: user_id)
  end

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end

  def self.search(search)
    return Post.all unless search
    Post.where('body LIKE(?)', "%#{search}%")
  end

end
