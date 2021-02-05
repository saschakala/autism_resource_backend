class TagSerializer
  include JSONAPI::Serializer
  attributes :tag_name, :books, :articles
end
