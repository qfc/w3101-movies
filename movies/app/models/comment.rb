class Comment
  include Mongoid::Document
  field :commenter, type: String
  field :body, type: String
  embedded_in :post
end
