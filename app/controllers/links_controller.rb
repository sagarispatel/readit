class LinksController < ApplicationController

  def create
    @link = Link.new(params[:link])
    if @link.save
      redirect_to @link
    else
      render action: 'new'
    end
  end

  def show
  end

  def new
    @link = Link.new
  end
end