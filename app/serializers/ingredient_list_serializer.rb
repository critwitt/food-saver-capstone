class IngredientListSerializer < ActiveModel::Serializer
  attributes :id, :ingredient_amount, :unit
  has_one :ingredient
  has_one :recipe
end
