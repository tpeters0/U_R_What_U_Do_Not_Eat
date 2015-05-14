class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :profile
  belongs_to :taboo_food
end
