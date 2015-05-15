class Ability
  include CanCan::Ability

  def initialize(user)
    user == User.new
    can :read, Post
    can :read, Result
    can :read, Food
    can :read, Reason
    can :read, Period
    can :read, Profile

    if user
      can :create, Post
      can :create, Profile
      can :read, Food
      can :read, Post


      can :update, Profile do |profile|
        user == profile.user
      end
      can :update, Post do |post|
        # user == post.user
      end

      can :destroy, Post do |post|
        # user == post.user
      end
    end





    # if user.admin
    #   can :manage, :all
    # end

  end
end
