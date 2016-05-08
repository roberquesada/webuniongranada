class SiteController < ApplicationController
  def index
    @last_event = Event.limit(1).first
    @last_event_speakers = @last_event.speakers
  end
end
