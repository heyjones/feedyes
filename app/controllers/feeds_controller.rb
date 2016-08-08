class FeedsController < ApplicationController
  def show
    @feed = Feed.find(params[:id])
    respond_to do |format|
      format.atom { render layout: false }
    end
  end
end
