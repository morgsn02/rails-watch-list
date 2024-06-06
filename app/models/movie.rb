class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates_presence_of :overview
  validates :title, presence: true, uniqueness: true
end
