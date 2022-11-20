class Post < ApplicationRecord
  belongs_to :member

  validates :title, presence: true, length: { in: 4..30 }
  validates :body, presence: true, length: { minimum: 4 }
end
