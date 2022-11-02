class IngredientList < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  validates :ingredient_id, presence: true
  validates :recipe_id, presence: true
  validates :ingredient_amount, presence: true
  validates :unit, presence: true
end
