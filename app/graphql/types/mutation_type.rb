Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :createUser, function: Resolvers::UserCreate.new
  field :createShelf, function: Resolvers::ShelfCreate.new
  field :createBookCategory, function: Resolvers::BookCategoryCreate.new
  field :deleteBookCategory, function: Resolvers::BookCategoryDelete.new
end
