class Profile < ActiveRecord::Base
  belongs_to  :user
  has_many    :posts

  validates :name, {presence: true}
end
