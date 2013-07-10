class PagesController < ApplicationController

  def index
    params[:per_page] ||= 3
    params[:page]     ||= 1
    #nil || 2 => 2
    @links = Link.order('created_at DESC').page(params[:page].to_i).per_page(params[:per_page].to_i)
  end

end
