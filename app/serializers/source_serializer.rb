class SourceSerializer
  include JSONAPI::Serializer
  attributes :source_type
  has_many :creators 
  has_many :tags
end
