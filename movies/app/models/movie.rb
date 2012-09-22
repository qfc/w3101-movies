class Movie
  include MongoMapper::Document

  key :name, String
  key :producer, String
  key :country, String
  key :language, String
  key :publish_year, Integer
  belongs_to :director
  many :comments
  many :users

end
