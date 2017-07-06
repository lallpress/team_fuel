class Organization < ActiveRecord::Base
    validates :org_name, presence: true
    validates :contact_id, presence: true
end
