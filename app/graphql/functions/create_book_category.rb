class Functions::CreateBookCategory < GraphQL::Function
  # Define `initialize` to store field-level options, eg
  #
  #     field :myField, function: Functions::CreateBookCategory.new(type: MyType)
  #
  # attr_reader :type
  # def initialize(type:)
  #   @type = type
  # end

  type Types::BookCategoryType
  
  # add arguments by type:
  # argument :id, !types.ID
  
  argument :description, !types.String
  argument :enabled, types.Boolean
  
  # Resolve function:
  def call(obj, args, ctx)
    BookCategory.create!(
      description: args[:description],
      enabled: args[:enabled]
    )
  rescue ActiveRecord::RecordInvalid => e
    # this would catch all validation errors and translate them to GraphQL::ExecutionError
    GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
  end
end
