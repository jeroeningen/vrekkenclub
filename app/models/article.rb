class Article < ApplicationRecord
  belongs_to :category

  validates :category_id, presence: true
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
