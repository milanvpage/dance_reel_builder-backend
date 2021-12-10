class TheatersController < ApplicationController
    def index
        theaters = Theater.all
        render json: theaters #TheaterSerializer.new(theaters, {include: [:category]}) --how to do it with FastJSON
        
    end
    
    def create
        theater = Theater.new(theater_params)
        if theater.save
            render json: theater
        else
            render json: {errors: "Couldn't be Saved"}
        end
        
    end
    
    def show
        theater = Theater.find_by_id(parmas[:id])
        render json: theater
        
    end
    
    def update
        theater = Theater.find_by_id(params[:id])
        if theater.update(theater_params)
            render json: theater # using ActiveModel serializer so I can just say theater
        else
            render json: {error: "Couldn't Update"}
        end
    end
    
    def destroy
        theater = Theater.find_by_id(params[:id])
        theater.destroy
        render json: {message: "Successfully deleted #{theater.name}"}
    end
    end
    
    private 
    
    def theater_params
    params.require(:theater).permit(:name, :url)
    end
end
