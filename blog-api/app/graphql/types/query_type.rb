module Types
  class QueryType < Types::BaseObject
    description 'Available fields for Query Type'

    field :users, Connections::UserConnection, null: false, connection: true,
           resolver: Resolvers::QueryType::UsersResolver

    field :user, Connections::UserConnection, null: true, connection: true,
           resolver: Resolvers::QueryType::UserResolver

    field :articles, Connections::ArticleConnection, null: false, connection: true,
           resolver: Resolvers::QueryType::ArticlesResolver
  end
end
