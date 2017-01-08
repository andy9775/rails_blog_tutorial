class Article < ApplicationRecord
  # ensure comments are deleted along with article
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
