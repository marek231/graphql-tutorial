module Mutations
  class CreateLink < BaseMutation
    # Arguments passed to the 'resolved' method
    argument :description, String, required: true
    argument :url, String, required: true

    # Return type from the mutation
    type Types::LinkType

    def resolve(description: nil, url: nil)
      Link.create!(
        description: description,
        url: url,
        user: context[:current_user]
      )
    end
  end
end
