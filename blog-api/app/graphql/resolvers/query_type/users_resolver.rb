module Resolvers
  module QueryType
    class UsersResolver < Resolvers::BaseResolver
      description "List of Users"

      def resolve(**args)
        User.all
      end
  	end
  end
end