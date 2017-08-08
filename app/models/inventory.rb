class Inventory < ActiveRecord::Base
    validates_presence_of :itemnum, :orgnum, :quantity, :expires
    has_and_belongs_to_many :items, :foreign_key => 'item_id', :primary_key => 'inventory_id'
    has_and_belongs_to_many :organizations, :foreign_key => 'organization_id', :primary_key => 'inventory_id'

    #has_many :items, :foreign_key => 'item_id', :primary_key => 'inventory_id'
    #has_many :organizations, :foreign_key => 'inventory_id', :primary_key => 'organization_id'
    #belongs_to :items
    #delegate :get_itemName, :get_category, to: :items
    #delegate :get_organization, to: :organizations
end
