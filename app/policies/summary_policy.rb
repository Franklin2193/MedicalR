class SummaryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    user.is_admin?
  end
end
