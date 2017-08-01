class Item < ActiveRecord::Base
    validates_presence_of :itemName, :category
    belongs_to :inventory
    public
    def get_itemName(index)
        return self[index].itemName
    end
    
    def get_category(index)
        return self[index].category
    end
end
