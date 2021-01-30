class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

    def index?
      @user.has_role?(:admin)
    end

    def edit?
      @user.has_role?(:admin) || @record.id == @user.id
    end

    def update?
      @user.has_role?(:admin) || @record.id == @user.id
    end

    def user_is_admin?
      @user.has_role?(:admin)
    end

    def is_owner?
      @user.id == current_user.id
    end
end
