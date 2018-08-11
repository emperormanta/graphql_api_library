class Functions::CreateShelf < GraphQL::Function
  # Define `initialize` to store field-level options, eg
  #
  #     field :myField, function: Functions::CreateShelf.new(type: MyType)
  #
  # attr_reader :type
  # def initialize(type:)
  #   @type = type
  # end
  type Types::ShelfType
  # add arguments by type:
  # argument :id, !types.ID
  argument :block, !types.String

  # Resolve function:
  def call(obj, args, ctx)
    Shelf.create!(
      block: args[:block]
    )
  rescue ActiveRecord::RecordInvalid => e
    # this would catch all validation errors and translate them to GraphQL::ExecutionError
    GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
  end
end
