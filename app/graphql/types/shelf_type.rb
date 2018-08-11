Types::ShelfType = GraphQL::ObjectType.define do
  name "Shelf"

  field :id, !types.ID
  field :block, !types.String
end
