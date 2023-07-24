class UserSerializer < ActiveModel::Serializer
  attributes :uuid, :email, :created_at, :updated_at
end
