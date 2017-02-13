class ArticlePolicy < ApplicationPolicy
  power :index

  def index?
    can?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
