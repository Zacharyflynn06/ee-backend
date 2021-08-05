class ArticleSerializer
  include JSONAPI::Serializer
  attributes :title, :link, :author, :date
end
