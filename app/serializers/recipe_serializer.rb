class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :steps, :ingredient_lists
  has_one :user
  has_many :ingredients
end
