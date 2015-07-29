class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 1, maximum: 63 }
  validates :description, presence: true, length: { minimum: 1, maximum: 511 }
  validates :user_id, presence: true
end
