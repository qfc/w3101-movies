class User
  include MongoMapper::Document

  key :first_name, String
  key :last_name, String
  key :age, Integer
  key :state, String
  key :sex, String
  many :movies
  many :comments
  many :directors
  

end
