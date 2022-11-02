class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password

  has_many :ingredients
end
