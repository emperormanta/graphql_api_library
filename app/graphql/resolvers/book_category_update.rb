class Resolvers::BookCategoryUpdate < GraphQL::Function
  
  type Types::BookCategoryType

  argument :id, !types.ID
  argument :description, !types.String
  argument :enabled, !types.Boolean

  def call(_obj, args, _ctx)
    book_category = BookCategory.find(args[:id])
    book_category.update!(
      description: args[:description],
      enabled: args[:enabled]
    )
    book_category
  end
end