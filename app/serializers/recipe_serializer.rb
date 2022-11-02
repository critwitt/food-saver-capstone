class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :steps
  has_one :user
end
