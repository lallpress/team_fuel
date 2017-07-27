class Organization < ActiveRecord::Base
    validates_presence_of :org_name, :address, :phone, :contact_id
end
