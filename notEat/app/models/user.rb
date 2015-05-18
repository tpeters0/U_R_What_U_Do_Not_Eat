class User < ActiveRecord::Base
  has_one   :profile

  accepts_nested_attributes_for :profile, allow_destroy: true

  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
