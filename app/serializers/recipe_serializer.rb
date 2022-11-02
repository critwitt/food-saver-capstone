class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :steps
  has_one :user
  has_many :ingredients
  has_many :ingredient_lists
end
