class Reason < ActiveRecord::Base
  belongs_to  :restriction
  has_many    :posts
end
