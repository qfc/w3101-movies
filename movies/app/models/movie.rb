class Movie
  include MongoMapper::Document

  key :name, String
  key :producer, String
  key :country, String
  key :language, String
  key :publish_year, Integer
  has_many :comments
  has_many :users, :through => :comments
  

end
