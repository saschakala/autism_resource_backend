class SocialMediaAccountSerializer
  include JSONAPI::Serializer
  attributes :platform, :handle, :url, :img_url, :bio, :genre, :creators, :tags
end
