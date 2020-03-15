class Post < ApplicationRecord
  validates :title, :body, :image, presence: true
  belongs_to :user
end
