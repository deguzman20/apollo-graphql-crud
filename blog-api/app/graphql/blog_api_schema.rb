class BlogApiSchema < GraphQL::Schema
  # library for transform directives
  directive(GraphQL::Schema::Directive::Transform)
  # instrumentation for query execution
  instrument(:query, QueryTimerInstrumentation)
  mutation(Types::MutationType)
  query(Types::QueryType)
end

