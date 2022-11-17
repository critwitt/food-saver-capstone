class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredient_lists, dependent: :destroy
  has_many :ingredients, through: :ingredient_lists

  validates :name, presence: true
  validates :steps, presence: true
  validates :user_id, presence: true
end
