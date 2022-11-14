class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :perishable, :shelf_life, :image
end
