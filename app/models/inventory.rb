class Inventory < ActiveRecord::Base
    validates_presence_of :itemnum, :orgnum, :quantity, :expires, :category
    validates :itemnum, :presence => true, :uniqueness => true
    
    delegate :get_itemName, :get_category, to: :items
    delegate :get_organization, to: :organizations
    
   
end
