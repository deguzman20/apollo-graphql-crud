module Resolvers
	module QueryType
    class UserResolver < Resolvers::BaseResolver
      argument :id, Integer, required: true
      description "User"

      def user(** args)
        unless id.nil?
          User.find(args[:id])
        end
      end

  	end
	end
end