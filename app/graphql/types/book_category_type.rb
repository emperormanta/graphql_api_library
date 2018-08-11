Types::BookCategoryType = GraphQL::ObjectType.define do
  name "BookCategory"

  field :id, !types.ID
  field :description, !types.String
  field :enabled, types.Boolean
end
