class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  def current_user
    ## yes 的话表示通过，no的话不通过，换成yes跑测试是可以通过的
    ## 在我们系统中 ApplicationPolicy的can? 方法是通过 permission role user 这三个类来配置某一个user是否有某个权限的
    User.find_or_create_by(name: :no)
  end
end
