class TopController < ApplicationController

  def index
    @error_messages = ErrorMessage.order("created_at DESC").page(params[:page]).per(10)
  end

  def search
    @error_messages = ErrorMessage.where('title LIKE(?)', "%#{params[:keyword]}%").limit(10)
  end
end
