class Movie
  include MongoMapper::Document

  key :name, String
  
  key :producer, String
  key :written_by, String
  key :description, String
  key :language, String
  key :country, String
  key :rating, Integer
  belongs_to :director
  many :comments

end
