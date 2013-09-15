class Admin::AdminController < ApplicationController
  before_filter :tab

  private

  def tab
    @tab = 'admin'
  end
end
