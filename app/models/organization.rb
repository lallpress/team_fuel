class Organization < ActiveRecord::Base
    validates_presence_of :org_name, :address, :phone, :contact_id
    has_and_belongs_to_many :inventories, :foreign_key => 'inventory_id', :primary_key => 'organization_id'
    public
    def get_organization(index)
        return self[index].org_name
    end
end
