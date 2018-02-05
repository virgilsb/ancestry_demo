class MessagesController < ApplicationController
  def index
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new(parent_id: params[:parent_id])
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_url
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_url
  end

  private

  def message_params
    params.require(:message).permit(:content, :parent_id)
  end
end
