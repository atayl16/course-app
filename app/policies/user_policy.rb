class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user: current_user)
      end
    end
  end

    def index?
      @user.has_role?(:admin)
    end

    def edit?
      #@user.has_role?(:admin)
    end

    def update?
      #@user.has_role?(:admin) || is_owner?
    end

    def user_is_admin?
      @user.has_role?(:admin)
    end

    def is_owner?
      @user.id == current_user.id
    end

end
