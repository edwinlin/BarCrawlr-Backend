class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :img_url, :lists
end
