class Food < ActiveRecord::Base
  has_many  :users, through: :restriction
end
