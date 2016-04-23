class EventsController < ApplicationController

  def show
    @event = Event.find_by_slug!(params[:id])
    respond_to do |format|
      format.html { render layout: false }
      format.json { render json: @event }
    end
  end

end
