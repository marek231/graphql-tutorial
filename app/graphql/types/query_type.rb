module Types
  class QueryType < BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_links, function: Resolvers::LinksSearch
  end
end
