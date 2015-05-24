class Profile < ActiveRecord::Base
  belongs_to  :user
  has_many    :posts
  has_many    :restrictions

  validates :name, {presence: true}
end
