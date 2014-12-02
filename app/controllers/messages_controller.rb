class MessagesController
  skip_before_action :verify_authenticity_token
  def index
    messages = Message.where(room_id: params[:room_id])
    render :json => messages
  end

  def create
    message = Message.new(message_params)
    if message.save
      render :json => message
    else
      render :json => { :errors => message.errors.full_messages }
    end
  end

  private
  def message_params
    params.require(:message).permit(:text, :user_id, :room_id)
  end

end