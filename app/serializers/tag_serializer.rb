class TagSerializer
  include JSONAPI::Serializer
  attributes :tag_name, :sources
end
