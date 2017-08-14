class Organization < ActiveRecord::Base
    validates_presence_of :org_name, :address, :phone, :contact_id
    belongs_to :inventory
    
    
    public
    def get_organization(index)
        return self[index].org_name
    end
end
