class BookSerializer
  include JSONAPI::Serializer
  attributes :title, :genre, :url, :img_url, :description, :creators, :tags
end
