class TicketsController < ApplicationController

    def index
        @tickets = Ticket.all
        render json: @tickets
    end

    def show
        ticket = Ticket.find_by(id: params[:id])
        if ticket
          render json: ticket
        else
          render json: { error: "ticket not found" }, status: :not_found
        end
    end

    def create
        @ticket = Ticket.create(ticket_params)
        render json: @ticket
    end

    def update
        @ticket = Ticket.find(params[:id])
        @ticket.update(ticket_params)
        render json: @ticket
    end

    def destroy
        @ticket = Ticket.find(params[:id])
        @ticket.destroy
        render json: @ticket
    end

    private

    def ticket_params
        params.require(:ticket).permit(:user_id, :seat_id)
    end

end