class Gimage < ActiveRecord::Base
  attr_accessible :file
  has_attached_file :file,
                    :styles => { :original => "1000x1000>" },
                    :default_url => "/assets/logo.png"
  validates :file, :attachment_presence => true
end
