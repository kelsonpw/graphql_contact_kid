module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :websites, [Types::WebsiteType], null: true
    field :websites_count, Integer, null: true

    def websites_count
      object.websites.size
    end
  end
end
