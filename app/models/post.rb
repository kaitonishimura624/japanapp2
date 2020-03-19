class Post < ApplicationRecord
  validates :title, :body, :image, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :comments
end
