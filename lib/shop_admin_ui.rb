module ShopAdminUI

 def self.included(base)
   base.class_eval do

      attr_accessor :product, :category
      alias_method :products, :product
      alias_method :categories, :category
      
      protected

        def load_default_product_regions
          returning OpenStruct.new do |product|
            product.edit = Radiant::AdminUI::RegionSet.new do |edit|
              edit.main.concat %w{edit_header edit_form}
              edit.form.concat %w{edit_title edit_description edit_keywords}
              edit.form_bottom.concat %w{edit_buttons edit_timestamp}
            end
            product.new = product.edit
            product.index = Radiant::AdminUI::RegionSet.new do |index|
              index.preamble.concat %w{header explanation new_button filters}
              index.products_container
              index.thead.concat %w{title_header categories_header modify_header}
              index.tbody.concat %w{title_cell categories_cell remove_cell}
              index.product_tabs.concat %w{product_tab}
              index.bottom.concat %w{new_button}
              index.paginate
            end
            product.remove = product.index
          end
        end
        
        def load_default_category_regions
          returning OpenStruct.new do |category|
            category.edit = Radiant::AdminUI::RegionSet.new do |edit|
              edit.main.concat %w{edit_header edit_form}
              edit.form.concat %w{edit_title edit_description edit_keywords}
              edit.form_bottom.concat %w{edit_buttons edit_timestamp}
            end
            category.new = category.edit
            category.index = Radiant::AdminUI::RegionSet.new do |index|
              index.preamble.concat %w{header explanation new_button filters}
              index.categories_container
              index.thead.concat %w{title_header categories_header modify_header}
              index.tbody.concat %w{title_cell categories_cell remove_cell}
              index.category_tabs.concat %w{category_tab}
              index.bottom.concat %w{new_button}
              index.paginate
            end
            category.remove = category.index
          end
        end
      
    end
  end
end

