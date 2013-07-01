class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.admin?
        can :manage, :all
      else
        can :read, :all
        can :update, User, :id => user.id
      end
    else
      can :read, :all
    end
 end
end
