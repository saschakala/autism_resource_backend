class SourceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :source_type, :title, :platform, :handle, :genre, :url, :img_url, :description
  has_many :creators
  has_many :tags
end
