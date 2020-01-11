class Connections::ArticleConnection < GraphQL::Types::Relay::BaseConnection
  edge_type(Edges::ArticleEdge)

  field :total_count, Integer, null: false
  def total_count
    object.nodes.count
  end
end