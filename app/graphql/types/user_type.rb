Types::UserType = GraphQL::ObjectType.define do
  name "User"
  description "GraphQL type to get User"

  field :id, !types.ID
  field :email, !types.String
  field :full_name, !types.String
  field :role, types.String
end
