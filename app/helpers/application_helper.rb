module ApplicationHelper
  def admin
    User.first
  end
end
