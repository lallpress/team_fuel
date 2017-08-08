class Item < ActiveRecord::Base
    validates_presence_of :itemName, :category
    has_and_belongs_to_many :inventories, :foreign_key => 'inventory_id', :primary_key => 'item_id'
    public
    attr_accessor :itemName, :category
    
    def get_itemName
        #return self[index].itemName
        return "Howdy"
    end
    
    def get_category
        #return self[index].category
        return "Hello"
    end
end
