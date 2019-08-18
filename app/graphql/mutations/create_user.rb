class Mutations::CreateUser < Mutations::BaseMutation
  argument :name, String, required: true
  argument :email, String, required: true
  argument :password_digest, String, required: true

  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(name:, email:, password_digest:)
    user = User.new(name: name, email: email, password_digest: password_digest)
    if user.save
      {
        user: user,
        errors: [],
      }
    else
      {
        user: nil,
        errors: user.errors.full_messages,
      }
    end
  end
end
