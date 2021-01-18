class SourceSerializer
  include JSONAPI::Serializer
  attributes :source_type, :title, :platform, :handle, :genre, :url, :img_url, :description, :creators, :tags
  # has_many :creators
  # has_many :tags
end



