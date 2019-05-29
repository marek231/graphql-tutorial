module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false

    # Just for tutorial purposes
    field :email, String,null: false
  end
end
