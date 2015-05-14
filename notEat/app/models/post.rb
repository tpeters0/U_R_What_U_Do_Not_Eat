class Post < ActiveRecord::Base
  # belongs_to :user
  belongs_to :profile
  references :food
  references :reason
end
