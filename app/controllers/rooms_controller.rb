class RoomsController < ApplicationController
  before_action :authenticate_user!

  def new
    @room = Room.new
   
  end

  def create
    @room = Room.new(room_params)
    @Room.user_id = current_user.id
    if @room.save
     redirect_to new_room_path
    else 
     render :new 
    end
  end

  def index
    @room = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end


  private
  def room_params
   params.require(:room).permit(:room_name, :room_price, :room_address, :content, :image)
  end
end
