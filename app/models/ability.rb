class Ability
  include CanCan::Ability

  def initialize(user)
  	if user.admin?
  		can :manage, Comment
  		can :manage, User
  	else
  		can [:read, :create], Comment
  		can :manage, User, id: user.id
      cannot [:update, :destroy], Product

  	end
  end
end