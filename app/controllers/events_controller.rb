class EventsController < ApplicationController

  def show
    @event = Event.find_by_slug!(params[:id])
    respond_to do |format|
      format.json { render json: @event }
      format.html
    end
  end

end
