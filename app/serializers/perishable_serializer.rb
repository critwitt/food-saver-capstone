class PerishableSerializer < ActiveModel::Serializer
  attributes :id, :date_entered, :expired
  has_one :user
  has_one :ingredient
end
