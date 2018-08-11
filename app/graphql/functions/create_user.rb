class Functions::CreateUser < GraphQL::Function
  # Define `initialize` to store field-level options, eg
  #
  #     field :myField, function: Functions::CreateUser.new(type: MyType)
  #
  # attr_reader :type
  # def initialize(type:)
  #   @type = type
  # end

  type Types::UserType

  # add arguments by type:
  argument :email, !types.String
  argument :password, !types.String
  argument :full_name, !types.String
  argument :role, !types.String

  # Resolve function:
  def call(obj, args, ctx)
    User.create!(
      email: args[:email],
      password: args[:password],
      full_name: args[:full_name],
      role: args[:role]
    )
  rescue ActiveRecord::RecordInvalid => e
    # this would catch all validation errors and translate them to GraphQL::ExecutionError
    GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
  end
end
