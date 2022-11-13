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

  def search
    if params[:keyword].present?
      @rooms = Room.where('room_address LIKE ?', "%#{params[:keyword]}%").or(Room.where('room_name LIKE ?', "%#{params[:keyword]}%"))
      .or(Room.where('room_content LIKE ?', "%#{params[:keyword]}%")).or(Room.where('room_price LIKE ?', "%#{params[:keyword]}%"))
      @keyword = params[:keyword]
    else
      @rooms = Room.all
    end
    
  end

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  private
  def room_params
   params.require(:room).permit(:room_name, :room_price, :room_address, :room_content, :image)
  end

end
