class FeedbackPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    @user.present? && @user.has_role?(:admin)
  end

  def destroy?
    @user.present? && @user.has_role?(:admin)
  end
end
