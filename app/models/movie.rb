class Movie < ApplicationRecord
  MOVIES = Movie.all

  validates :title, :overview, presence: true
  validates :title, uniqueness: true
  has_many :bookmarks
end
