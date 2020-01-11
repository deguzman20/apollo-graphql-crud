module Types
  # query object for article
  class ArticleType < BaseObject
    description 'Article Type'
    # graphql_name 'ARTICLE_TYPE'
    field :title, String, null: false
    field :description, String, null: false
    field :user, UserType, null: false
  end
end
