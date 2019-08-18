module Types
  class WebsiteType < Types::BaseObject
    field :title, String, null: false
    field :recipient, String, null: false
  end
end
