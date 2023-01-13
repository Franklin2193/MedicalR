class SummaryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end
  end

  def show?
    user == record.user
  end

  def create?
    true
  end

  def destroy?
    user.is_admin?
  end

  def new?
    true
  end


end
