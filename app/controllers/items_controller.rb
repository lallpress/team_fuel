##
# This class provides methods to create, read, update, and 
# delete Items

class ItemsController < ApplicationController
    helper_method :sort_column, :sort_direction
    
    # Gets all Items
    def index
        @items = Item.order(sort_column + " " + sort_direction)
    end
    
    # Gets an item based on ID
    def show
        @item = Item.find(params[:id])
    end
    
    # Creates a new instance of Item
    def new
        @item = Item.new
    end
    
    # Creates a new Item with parameters to persist to the database
    def create
        @item = Item.new(item_params)
        
        if @item.save
            redirect_to @item
        else
            render 'new'
        end
    end
    
    # Edits an Item based on ID
    def edit
        @item = Item.find(params[:id])
    end
    
    # Edits an Item based on ID
    def update
        @item = Item.find(params[:id])
        
        if @item.update(item_params)
            redirect_to @item
        else
            render 'edit'
        end
    end
    
    # Deletes an Item based on ID.
    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        
        redirect_to items_path
    end
    
    private
        def item_params
            params.require(:item).permit(:itemName, :category)
        end
        
        def sort_column
            Donor.column_names.include?(params[:sort]) ? params[:sort] : "itemName"
        end

        def sort_direction
            %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
        end
end
