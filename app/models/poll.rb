class Poll
  include Mongoid::Document
  field :question, type: String
  field :image_url, type: String
  field :choice_one, type: String
  field :choice_two, type: String
end
