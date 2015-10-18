class TopController < ApplicationController

  def index
    @error_messages = ErrorMessage.order("created_at DESC").page(params[:page]).per(10)
  end

  def search
    @error_messages = ErrorMessage.where('error_code LIKE(?)', "%#{params[:keyword]}%").page(params[:page]).per(10)
    render :index
  end
end
