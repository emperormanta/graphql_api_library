Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :User, Types::UserType do
    description "Get User based on ID parameter"

    argument :id, !types.ID
    
    resolve -> (obj, args, ctx) {
      User.find( args[:id] )
    }
  end

  field :Users, !types[Types::UserType] do
    description "Get all user"

    resolve -> (obj, args, ctx) {
      User.all
    }
  end

  field :BookCategory, Types::BookCategoryType do
    description "Get Book Category based on ID parameter"

    argument :id, !types.ID

    resolve -> (obj, args, ctx) {
      BookCategory.find(args[:id])
    }
  end

  field :BookCategories, !types[Types::BookCategoryType] do
    description "Get all book category"

    resolve -> (obj, args, ctx) {
      BookCategory.all
    }
  end

  field :Shelf, Types::ShelfType do
    description "Get Shelf based on ID parameter"

    resolve -> (obj, args, ctx) {
      Shelf.find( args[:id] )
    }
  end
  
  field :Shelves, !types[Types::ShelfType] do
    description "Get all shelf"

    resolve -> (obj, args, ctx) {
      Shelf.all
    }
  end
end
