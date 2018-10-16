class Types::UserType < Types::BaseObject
  description "A user"

  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :email, String, null: false
  field :created_at, String, null: false
  field :updated_at, String, null: false
end
