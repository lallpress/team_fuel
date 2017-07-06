class OrganizationController < ApplicationController
    def index
        @org = Organization.all
    end
    
    def show
        @org = Organization.find(params[:id])
    end
    
    def new
        @org = Organization.new
    end
    
    def create
        @org = Organization.new(organization_params)
        
        if @org.save
            redirect_to @org
        else
            render 'new'
        end
    end
    
    def edit
        @org = Organization.find(params[:id])
    end
    
    def update
        @org = Organization.find(params[:id])
        
        if @org.update(organization_params)
            redirect_to @org
        else
            render 'edit'
        end
    end
    
    def destroy
        @org = Organization.find(params[:id])
        @org.destroy
        
        redirect_to organizations_path
    end
    
    private
        def organization_params
            params.require(:organization).permit(:org_name)
        end
end
