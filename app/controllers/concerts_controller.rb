class ConcertsController < ApplicationController

    def index
        @concerts = Concert.all
        render json: @concerts
    end

    def show
        concert = Concert.find_by(id: params[:id])
        if concert
          render json: concert
        else
          render json: { error: "concert not found" }, status: :not_found
        end
      end

    def create
        @concert = Concert.create(concert_params)
        render json: @concert
    end

    def update
        @concert = Concert.find(params[:id])
        @concert.update(concert_params)
        render json: @concert
    end

    def destroy
        @concert = Concert.find(params[:id])
        @concert.destroy
        render json: @concert
    end

    private

    def concert_params
        params.permit(:tickets_available, :date, :time, :title, :price_range, :event_info, :image_url)
    end

end