module ApplicationHelper
  def admin
    User.first
  end

  def boiler_page
    Boiler.first
  end

  def spare_page
    Spare.first
  end

  def documentation_page
    Documentation.first
  end

  def price_page
    PricePage.first
  end

end
