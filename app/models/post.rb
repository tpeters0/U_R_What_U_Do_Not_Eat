class Post < ActiveRecord::Base
  belongs_to :profile
  belongs_to :reason
  belongs_to :food
end
