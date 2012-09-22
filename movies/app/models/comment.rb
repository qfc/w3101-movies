class Comment
  include MongoMapper::Document

  key :content, String
  key :created_at, Time, :default=> Time.now
  key :rating, Integer
  belongs_to :user
  belongs_to :movie

end
