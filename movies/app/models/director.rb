class Director
  include MongoMapper::Document

  key :first_name, String
  key :last_name, String
  key :age, Integer
  key :country, String
  many :movies

end
