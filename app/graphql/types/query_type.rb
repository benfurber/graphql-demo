class Types::QueryType < Types::BaseObject
  field :users, [Types::UserType], null: false

  def users
    User.all
  end
end
