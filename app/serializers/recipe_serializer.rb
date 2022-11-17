class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :steps, :ingredient_lists, :image
  has_one :user
  has_many :ingredients
end
