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

  def meta_keywords(tags = nil)
    if tags.present?
      content_for :meta_keywords, tags
    else
      content_for?(:meta_keywords) ? content_for(:meta_keywords) : ''
    end
  end

  def meta_description(desc = nil)
    if desc.present?
      content_for :meta_description, desc
    else
      content_for?(:meta_description) ? content_for(:meta_description) : ''
    end
  end

end
