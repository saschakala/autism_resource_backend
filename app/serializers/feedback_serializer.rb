class FeedbackSerializer
  include JSONAPI::Serializer
  attributes :title, :feedback, :name
end
