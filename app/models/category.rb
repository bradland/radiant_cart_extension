class Category < ActiveRecord::Base
  acts_as_tree :order => 'category.sort ASC, category.name'
  has_many :categorizations, :dependent => :destroy
  has_many :products, :through => :categorizations
  
  validates_presence_of :name
  
  def virtual?
    true
  end
end
