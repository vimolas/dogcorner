class AppointmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    user == record.user  || user == record.dog.user
  end

  def create?
    user != record.dog.user
  end

  def edit?
    update?
  end

  def update?
    user == record.user  || user == record.dog.user
  end

  def confirm?
    user == record.dog.user
  end

  def decline?
    user == record.dog.user
  end

  def destroy?
    record.user == user
  end
end
