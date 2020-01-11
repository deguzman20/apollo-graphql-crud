module Types
  # query object for user
  class UserType < BaseObject
    description 'User Type'
    #graphql_name 'USER_TYPE'
    field :id, ID, null: false
    field :encrypted_password, String, null: false
    field :email, String, null: false
    field :articles, [ArticleType], null: false
  end
end
