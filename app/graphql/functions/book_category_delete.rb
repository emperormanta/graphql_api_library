class Functions::BookCategoryDelete < GraphQL::Function
  # Define `initialize` to store field-level options, eg
  #
  #     field :myField, function: Functions::BookCategoryDelete.new(type: MyType)
  #
  # attr_reader :type
  # def initialize(type:)
  #   @type = type
  # end
  # type Types::BookCategoryType
  # # add arguments by type:
  # # argument :id, !types.ID
  # argument :id, !types.ID
  # # Resolve function:
  # def call(obj, args, ctx)
  #   book_category = BookCategory.find(args[:id])
  #   book_category.destroy!
  #   book_category
  # end
end
