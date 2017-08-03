class Inventory < ActiveRecord::Base
    validates_presence_of :itemnum, :orgnum, :quantity, :expires, :category
    has_many :items
    belongs_to :items

    delegate :get_itemName, :get_category, to: :items
    delegate :get_organization, to: :organizations
    
   
end
