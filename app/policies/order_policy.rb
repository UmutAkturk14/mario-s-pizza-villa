class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def dashboard?
    user.admin?
  end

  def finish_purchase?
    record.user == user
  end

  def update_order_status?
    user.admin?
  end
end
