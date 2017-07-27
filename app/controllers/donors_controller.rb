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
        @donor = Donor.create!(donor_params)
        flash[:notice] = "Donor was successfully added!"
        redirect_to donors_path
    end
    
    # Edits a Donor based on ID
    def edit
        @donor = Donor.find(params[:id])
    end
    
    # Updates a Donor based on ID
    def update
        @donor = Donor.find(params[:id])
        @donor.update_attributes!(donor_params)
        flash[:notice] = "Donor was successfully updated!"
        redirect_to donors_path
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
