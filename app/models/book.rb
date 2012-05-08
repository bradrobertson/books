class Book < ActiveRecord::Base
  belongs_to :author
  attr_accessible :isbn, :name, :author

  has_and_belongs_to_many :tags
end
