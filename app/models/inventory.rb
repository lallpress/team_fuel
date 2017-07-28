class Inventory < ActiveRecord::Base
    validates_presence_of :itemnum, :orgnum, :quantity, :expires
    has_many :items
    belongs_to :items
    delegate :itemName, :category, to: :items
end
