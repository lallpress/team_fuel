class Item < ActiveRecord::Base
    validates_presence_of :itemName, :category
    belongs_to :inventory
    public :itemName, :category
end
