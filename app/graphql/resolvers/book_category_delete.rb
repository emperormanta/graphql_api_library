class Resolvers::BookCategoryDelete < GraphQL::Function
  argument :id, !types.ID

  type Types::BookCategoryType

  def call(_obj, args, _ctx)
    book_category = BookCategory.find(args[:id])
    book_category.destroy!
    book_category
  end
end