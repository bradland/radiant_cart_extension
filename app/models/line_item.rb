class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :order
  belongs_to :product
  
  validates_presence_of :name, :product_id
end
