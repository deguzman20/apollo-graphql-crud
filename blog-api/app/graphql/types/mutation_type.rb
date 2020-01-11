module Types
  class MutationType < Types::BaseObject
    description 'Available fields for Query Type'
    field :create_article, mutation: Mutations::CreateArticle
    field :create_user, mutation: Mutations::CreateUser
  end
end
