class SeatsController < ApplicationController

    def index
        @seats = Seat.all
        render json: @seats
    end

    def show
        seat = Seat.find_by(id: params[:id])
        if seat
          render json: seat
        else
          render json: { error: "seat not found" }, status: :not_found
        end
      end

    def create
        @seat = Seat.create(seat_params)
        render json: @seat
    end

    def update
        @seat = Seat.find(params[:id])
        @seat.update(seat_params)
        render json: @seat
    end

    def destroy
        @seat = Seat.find(params[:id])
        @seat.destroy
        render json: @seat
    end

    private

    def seat_params
        params.require(:seat).permit(:id, :section, :row, :number, :tooltip, :isReserved, :orientation, :concert_id, :isSelected)
    end

end