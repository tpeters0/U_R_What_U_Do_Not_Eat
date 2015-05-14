class Food < ActiveRecord::Base
  belongs_to  :foods_users
  has_many    :posts
end
