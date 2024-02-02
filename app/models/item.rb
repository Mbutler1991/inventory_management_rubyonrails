class Item < ApplicationRecord
    belongs_to :category
    belongs_to :supplier

    def category_name=(name)
      self.category = Category.find_by(name: name)
    end
  
    def supplier_name=(name)
      self.supplier = Supplier.find_by(name: name)
    end
  
    def category_name
      self.category.try(:name)
    end
  
    def supplier_name
      self.supplier.try(:name)
    end
end
