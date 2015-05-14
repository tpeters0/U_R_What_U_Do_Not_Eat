class Ability
  include CanCan::Ability

  def initialize(user)
    user == User.new
    can :read, Post
    can :read, Result
    can :read, Food
    can :read, Reason
    can :read, Period

    if user
      can :create, Post
      can :create, Profile
      can :read, Food
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
