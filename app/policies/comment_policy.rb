class CommentPolicy < ApplicationPolicy
  def destroy?
    @user.present? && @record.lesson.course.user_id == @user.id ||
      @user.present? && @record.user_id == @user.id ||
      @user.present? && @user.has_role?(:admin)
  end
end
