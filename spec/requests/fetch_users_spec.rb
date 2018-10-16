require "rails_helper"

describe "fetch users" do
  it "returns a list of users" do
    users = create_list(:user, 2)
    query = "{
      users {
        id
        firstName
        lastName
        email
      }
    }"

    post "/graphql", params: { query: query }

    expect(response.status).to be(200)
    expect(response.body).to eq(expected_response_body(users))
  end

  private

  def expected_response_body(users)
    expected_users = users.map do |user|
      {
        id: user.id.to_s,
        firstName: user.first_name,
        lastName: user.last_name,
        email: user.email,
      }
    end

    expected_body = { data: { users: expected_users } }
    expected_body.to_json
  end
end
