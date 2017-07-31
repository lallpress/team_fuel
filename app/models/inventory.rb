class Inventory < ActiveRecord::Base
    validates_presence_of :itemnum, :orgnum, :quantity, :expires, :category
    has_many :items
    belongs_to :items
    delegate :itemName, to: :items
end
