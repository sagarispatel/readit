class PagesController < ApplicationController

  def index
    params[:per_page] ||= 10
    params[:page]     ||= 1
    #nil || 2 => 2
    @links = Link.order('created_at DESC').page(params[:page]).per_page(params[:per_page])
  end

end
