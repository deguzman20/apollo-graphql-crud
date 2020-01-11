class Directives::MyDirective < GraphQL::Schema::Directive
  argument :unless, Boolean, required: true,
  description: "Skips the selection if this condition is true"
end