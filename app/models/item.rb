class Item < ActiveRecord::Base
    validates :itemName, presence: true, length: {minimum: 4}
    validates :category, presence: true
end
