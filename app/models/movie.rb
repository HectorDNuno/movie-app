class Movie < ApplicationRecord
  # validates :title, presence
  # validates :director, presence
  # validates :year, length: { minimum: 4 }
  has_many :actors #returns array of many actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
