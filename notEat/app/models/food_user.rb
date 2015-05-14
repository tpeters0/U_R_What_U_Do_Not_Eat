class FoodUser < ActiveRecord::Base
  has_many    :foods, :users
end
