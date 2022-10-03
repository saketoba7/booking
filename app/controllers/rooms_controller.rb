class RoomsController < ApplicationController
 
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params) 
    @room.user_id = current_user.id 
    if @room.save
      redirect_to root_path(@room)
    else
      render 'new'
    end
  end

  def index
    @rooms = Room.all
    @rooms = @rooms.where('room_name LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end

  def show
    @room = Room.find(params[:id])
  end

  private
  def room_params
   params.require(:room).permit(:room_name, :room_price, :room_address, :room_content, :image)
  end
end
