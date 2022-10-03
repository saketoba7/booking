class ReservationsController < ApplicationController
    before_action :authenticate_user!
    def create
        @reservation = current_user.reservations.create(reservation_params)
        redirect_to root_path notice:"予約が完了しました"
      
    end

    def index
        @reservations = current_user.reservations.all
    end
   
   private
   
    def reservation_params
        params.permit(:start_date, :end_date, :num_people, :room_id)
     end 

 end