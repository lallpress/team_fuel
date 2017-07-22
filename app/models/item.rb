class Item < ActiveRecord::Base
    validates_presence_of :itemName, :category
end
