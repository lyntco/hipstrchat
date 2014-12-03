class RoomsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  # include ActionController::Live
  def index
    rooms = Room.all
    @messages = Message.all
    @users = User.all
    respond_to do |f|
      f.html {}
      f.json {render :json => rooms}
    end
  end

  def show
    room = Room.find(params[:id])
    # messages = room.messages
    # message_count = room.messages.length
    # response.headers['Content-Type'] = 'text/event-stream'

    # sse = Reloader::SSE.new(response.stream)

    # begin
    #   #initially writes the data
    #   sse.write({ room: room.to_json, messages: messages.to_json })
    #   loop do
    #     sse.write({ count: message_count , current: Room.find(params[:id]).messages.length })
    #     if message_count != Room.find(params[:id]).messages.length
    #       sse.write({ room: room.to_json, messages: messages.to_json, event: 'new_message' })
    #     end
    #     sleep 1
    #   end
    # rescue IOError
    #   # When the client disconnects, we'll get an IOError on write
    # ensure
    #   sse.close
    # end
    render :json => { room: room, messages: room.messages }
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
