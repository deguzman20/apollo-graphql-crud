module Resolvers
	module QueryType
    class ArticlesResolver < Resolvers::BaseResolver
      description "List of Articles"

    	def resolve(**args)
        Article.all
      end
  	end
	end
end