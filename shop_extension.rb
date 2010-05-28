# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class ShopExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/shop"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  Radiant::AdminUI.send :include, ShopAdminUI unless defined? admin.product # UI is a singleton and already loaded
  admin.product = Radiant::AdminUI.load_default_product_regions
  admin.category = Radiant::AdminUI.load_default_category_regions
  
  def activate
    tab 'Catalog' do
      add_item "Products", "/admin/products"
      add_item "Categories", "/admin/categories"
      add_item "Orders", "/admin/orders"
    end
  end
end
