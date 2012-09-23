class User
  include MongoMapper::Document

  key :first_name, String
  key :last_name, String
  key :age, Integer
  key :state, String
  key :sex, String
  has_many :comments
  has_many :movies, :through => :comments
  

end
