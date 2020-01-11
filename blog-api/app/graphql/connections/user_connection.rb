class Connections::UserConnection < GraphQL::Types::Relay::BaseConnection
  edge_type(Edges::UserEdge)

  field :total_count, Integer, null: false
  def total_count
    object.nodes.count
  end
end