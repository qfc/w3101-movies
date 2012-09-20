class User
  include MongoMapper::Document

 
  key :first_name, String
  key :last_name, String
  key :sex, String
  key :state, String
  key :age, Integer
  key :country, String
  many :comments

end
