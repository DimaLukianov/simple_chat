class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_message, except: :create

  def create
  end

  def update

  end

  def destroy
  end

  private

  def set_message
    @message = current_user.messages.find_by_id(params[:id])
  end
end
