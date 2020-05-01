class Book < ApplicationRecord
  belongs_to :author
  has_many :books_genres
  has_many :genres, through: :books_genres

  has_one_attached :picture

  validates :title, presence: true, length: {minimum: 3}
 
end
