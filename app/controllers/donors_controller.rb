class DonorsController < ApplicationController
    
    # gets all Donors
    def index
        @donors = Donor.all
    end
    
    # Gets a donor based on ID
    def show
        @donor = Donor.find(params[:id])
    end
    
    # Creates a new instance of Donor
    def new
        @donor = Donor.new
    end
    
    # Creates a new Donor with parameters to persist to the database
    def create
        @donor = Donor.new(donor_params)
        
        if @donor.save
            redirect_to @donor
        else
            render 'new'
        end
    end
    
    # Edits a Donor based on ID
    def edit
        @donor = Donor.find(params[:id])
    end
    
    # Updates a Donor based on ID
    def update
        @donor = Donor.find(params[:id])
        
        if @donor.update(donor_params)
            redirect_to @donor
        else
            render 'edit'
        end
    end
    
    # Deletes a donor based on ID
    def destroy
        @donor = Donor.find(params[:id])
        @donor.destroy
        
        redirect_to donors_path
    end
    
    private
        def donor_params
            params.require(:donor).permit(:donorName, :phoneNum)
        end
end
