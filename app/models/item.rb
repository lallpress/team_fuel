class Item < ActiveRecord::Base
    validates_presence_of :itemName, :category

    #validates :itemnum, :presence => true, :uniqueness => true

    public
    def get_itemName(index)
        return self[index].itemName
    end
    
    def get_category(index)
        return self[index].category
    end
end
