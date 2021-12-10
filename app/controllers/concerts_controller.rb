class ConcertsController < ApplicationController
    def index
        concerts = Concert.all
        render json: concerts #ConcertSerializer.new(concerts, {include: [:category]}) --how to do it with FastJSON
        
    end

    def create
        concert = Commercial.new(concert_params)
        if concert.save
            render json: concert
        else
            render json: {errors: "Couldn't be Saved"}
        end
        
    end

    def show
        concert = Commercial.find_by_id(parmas[:id])
        render json: concert
        
    end

    def update
        concert = Commercial.find_by_id(params[:id])
        if concert.update(concert_params)
            render json: concert # using ActiveModel serializer so I can just say concert
        else
            render json: {error: "Couldn't Update"}
        end
    end

    def destroy
        concert = Commercial.find_by_id(params[:id])
        concert.destroy
        render json: {message: "Successfully deleted #{concert.name}"}
    end
end

private 

def concert_params
    params.require(:concert).permit(:name, :url)
end
end
