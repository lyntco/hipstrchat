class MessagesController < ApplicationController
  # skip_before_action :verify_authenticity_token
  # include ActionController::Live
  # def index
  #   messages = Message.where(room_id: params[:room_id])

  #   response.headers['Content-Type'] = 'text/event-stream'

  #   sse = Reloader::SSE.new(response.stream)

  #   begin
  #     loop do
  #       sse.write({ :messages => messages.to_json })
  #       sleep 1
  #     end
  #   rescue IOError
  #     # When the client disconnects, we'll get an IOError on write
  #   ensure
  #     sse.close
  #   end
  #   render :json => messages
  # end

  def create
    # message = Message.new(message_params)
    message = Message.new
    # raise params.inspect
    message.text = params[:text]
    message.user_id = params[:user_id]
    message.room_id = params[:room_id]
    if message.save
      render :json => message
    else
      render :json => { :errors => message.errors.full_messages }
    end
  end

  private
  # def message_params
    # params.require(:message).permit(:text, :user_id)
  # end

end