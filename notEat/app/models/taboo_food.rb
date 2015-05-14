class TabooFood < ActiveRecord::Base
  has_many  :posts

  has_many  :taboo_foods_users

end
