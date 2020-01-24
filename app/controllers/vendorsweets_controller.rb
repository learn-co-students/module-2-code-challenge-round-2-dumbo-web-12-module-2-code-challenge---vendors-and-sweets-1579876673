class VendorsweetsController < ApplicationController

    def new
        @vendorsweet = Vendorsweet.new
        @vendors = Vendor.all 
        @sweets = Sweet.all 
    end

    def create
        @vendorsweet = Vendorsweet.create(vs_params)
        if @vendorsweet.valid?
        
            redirect_to vendor_path(@vendorsweet.vendor)

        else 
            flash[:some_errors] = @vendorsweet.errors.full_messages
            redirect_to new_vendorsweet_path
        end
    end

    private

    def vs_params
        params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
    end
end
