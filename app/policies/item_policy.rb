class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def add_to_cart?
    true
  end

  def archive_item?
    user.admin?
  end

  def create?
    user.admin?
  end

  def edit_partial?
    user.admin?
  end

  def update?
    user.admin?
  end
end
