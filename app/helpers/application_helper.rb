module ApplicationHelper
  def admin
    User.first
  end

  def boiler_page
    Boiler.first
  end

end
