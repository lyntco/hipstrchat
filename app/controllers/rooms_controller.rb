class RoomsController < ApplicationController
  def index
  end

  def create
    room = Room.new(room_params)
    if room.save
      render :json => room
    else
      render :json => { :errors => room.errors.full_messages }
    end
  end

  def update
    room = Room.find(params[:id])
    # render :json => room.save ? room : { :errors => room.errors.full_messages }
    if room.update(room_params)
      render :json => room
    else
      render :json => { :errors => room.errors.full_messages }
    end
  end

  def destroy
  end

  private
  def room_params
    params.require(:room).permit(:topic, :name)
  end
end
