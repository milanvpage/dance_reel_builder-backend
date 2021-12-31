class CommercialsController < ApplicationController
    before_action :set_commercial, only: [:show, :update, :destroy]
    
    # GET /commercial
    def index
        commercials = Commercial.all
        render json: commercials #ConcertSerializer.new(commercials, {include: [:category]}) --how to do it with FastJSON
        
    end
    # POST /commercial
    def create
        commercial = Commercial.new(commercial_params)
        if commercial.save
            render json: commercial
        else
            render json: {errors: "Couldn't be Saved"}
        end
        
    end

    # GET /commercial/1
    def show
        render json: set_commercial
        
    end

    # PATCH/PUT /commercial/1
    def update
        if set_commercial.update(commercial_params)
            render json: set_commercial # using ActiveModel serializer so I can just say commercial
        else
            render json: {error: "Couldn't Update"}
        end
        #byebug
    end

    # DELETE /commercial/1
    def destroy
        set_commercial.destroy
        render json: {message: "Successfully deleted #{set_commercial.name}"}
        # render json: set_commercial.id
    end
end

private 

# Use callback to share common setup or constraints between actions

def set_commercial
    commercial = Commercial.find_by_id(params[:id])
end

def commercial_params
    params.require(:commercial).permit(:name, :url, :id)
end

