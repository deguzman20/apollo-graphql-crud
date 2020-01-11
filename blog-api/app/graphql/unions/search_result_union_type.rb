class Unions::SearchResultUnionType < Types::BaseUnion
  description 'Represents either a Article or User'
  possible_types User, Article

  def self.resolve_type(object, _context)
    case object
    when Article then Types::ArticleType
    when User then Types::UserType
    else
      raise "Unknown search result type"
    end
  end

end