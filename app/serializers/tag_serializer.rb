class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at

  def created_at
    "Some Date"
  end


end
