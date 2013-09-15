class Boiler < ActiveRecord::Base
  attr_accessible :title, :power, :amount_of_space, :price, :preview, :body
end
