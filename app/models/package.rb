class Package < ActiveRecord::Base
  has_many  :items
end
