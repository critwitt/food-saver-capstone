class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password, :perishables

  has_many :ingredients

end
