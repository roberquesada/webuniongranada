class SiteController < ApplicationController
  def index
    @last_event = Event.limit(1).try(:first)
    @last_event_speakers = @last_event.speakers if @last_event
  end
end
