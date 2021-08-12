class ProductSerializer
  include JSONAPI::Serializer
  attributes :name, :price, :description

  attribute :image_format do |object|
    if object.image.attached? 
      object.image.blob.attributes
            .slice('filename')
            .merge(url: object.image_url)
            .tap{ |attributes| attributes['name'] = attributes.delete('filename')}
    end
  end
end
