class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, Post

    if user
      can :create, Post
    end

    can :update, Post do |post|
      user == post.user
    end

    can :destroy, Post do |post|
      user == post.user
    end

    # if user.admin
    #   can :manage, :all
    # end

  end
end
