class Article < ApplicationRecord
  validates :title, presence: true
  validates_length_of :title, minimum: 5
  validates :description, presence: true, length: { minimum: 4 }
end
