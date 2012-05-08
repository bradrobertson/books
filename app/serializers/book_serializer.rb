class BookSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :tags

  embed :ids, :include => true

end
