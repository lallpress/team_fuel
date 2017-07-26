##
# This class provides methods to create, read, update, and
# delete Organizations

class OrganizationsController < ApplicationController
    # Gets all Organizations
    def index
        @organizations = Organization.all
    end
    
    # Gets an Organization based on ID
    def show
        @organization = Organization.find(params[:id])
    end
    
    # Creates a new instance of Organization
    def new
        @organization = Organization.new
    end
    
    # Creates a new Organization with parameters to persist to the database
    def create
        @organization = Organization.new(organization_params)
        
        if @organization.save
            redirect_to @organization
        else
            render 'new'
        end
    end
    
    # Edits an Organization based on ID
    def edit
        @organization = Organization.find(params[:id])
    end
    
    # Edits an Organization based on ID
    def update
        @organization = Organization.find(params[:id])
        
        if @organization.update(organization_params)
            redirect_to @organization
        else
            render 'edit'
        end
    end
    
    # Deletes an Organization based on ID
    def destroy
        @organization = Organization.find(params[:id])
        @organization.destroy
        
        redirect_to @organization
    end
    
    private
        def organization_params
            params.require(:organization).permit(:org_name, :address, :phone, :contact_id)
        end
end