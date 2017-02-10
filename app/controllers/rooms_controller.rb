class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: %i[show edit]
  def index
    @rooms = Room.eager_load(:owner)
  end

  def show
    @messages = @room.messages.includes(:user).limit(20)
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = Room.new(room_params)

    if @room.save
      flash.now[:notice] = "Successfully created '#{@room.name}' room"
    else
      render :new
    end
  end

  def edit
  end

  def destroy

  end

  private

  def set_room
    @room = Room.find_by_id(params[:id])
  end

  def room_params
    params.require(:room).permit(:name).merge(user_id: current_user.id)
  end
end
