class Resolvers::UserCreate < GraphQL::Function
  description "Create new user"

  type Types::UserType
  
  argument :email, !types.String
  argument :password, !types.String
  argument :full_name, !types.String
  argument :role, !types.String

  def call(_obj, args, _ctx)
    User.create!(
      email: args[:email],
      password: args[:password],
      full_name: args[:full_name],
      role: args[:role]
    )
  end
end