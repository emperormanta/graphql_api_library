class Resolvers::BookCategoryCreate < GraphQL::Function
  description "Resolver for create book category"

  type Types::BookCategoryType

  argument :description, !types.String
  argument :enabled, !types.Boolean

  def call(_obj, args, _ctx)
    BookCategory.create!(
      description: args[:description],
      enabled: args[:enabled]
    )
  end
end