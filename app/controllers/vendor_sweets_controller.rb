class VendorSweetsController < ApplicationController

    def index
        
    end


    def new
        @vendorsweet = VendorSweet.new
        @vendors =  Vendor.all
        @sweets = Sweet.all
    end

    def create
        @vendorsweet = VendorSweet.create(vendorsweet_params)

        if @vendorsweet.valid?
            redirect_to vendor_path(@vendorsweet.vendor_id)
        else
            flash[:error] = @vendorsweet.errors.full_messages
            redirect_to new_vendor_sweet_path()
        end
    end


    private

    def vendorsweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
