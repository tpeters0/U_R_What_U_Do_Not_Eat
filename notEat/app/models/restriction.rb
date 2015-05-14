class Restriction < ActiveRecord::Base
  belongs_to    :foods
  belongs_to    :user
end
