class Product < ActiveRecord::Base
  has_many :categorizations, :dependent => :destroy
  has_many :categories, :through => :categorizations
  has_many :line_items, :dependent => :nullify
end
