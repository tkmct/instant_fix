class ErrorMessagesController < ApplicationController
  before_action :set_error_message, only: [:show, :edit]

  def show
    @solutions = @error_message.solutions
  end

  def new
    @error_message = ErrorMessage.new
  end

  def create
    @error_message = ErrorMessage.new(error_message_params)
    if @error_message.save
      redirect_to action: :show, id: @error_message.id
    else
      render :new
    end
  end

  private
  def error_message_params
    params.require(:error_message).permit(:title, :error_code, :detail)
  end

  def set_error_message
    @error_message = ErrorMessage.find(params[:id])
  end
end
