class Resolvers::ShelfCreate < GraphQL::Function
  description "Create New Shelf"

  type Types::ShelfType
  
  argument :block, !types.String

  def call(_obj, args, _ctx)
    Shelf.create!(
      block: args[:block]
    )
  end
end