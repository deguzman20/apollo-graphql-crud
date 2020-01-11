module Mutations
	class CreateArticle < BaseMutation
    description 'Create article'
    argument :title, String, required: true
    argument :description, String, required: true
    field :response, String, null: true
    field :status_code, Integer, null: false
      # type Types::ArticleType

    def resolve(title: nil, description: nil)
      @article = Article.new
      @article.title = title
      @article.description = description
      if @article.save
        { response: @article, status_code: 200 }
      else
        { response: 'Failed to create', status_code: 400 }
      end 
    end
  end
end