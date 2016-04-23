class SiteController < ApplicationController
  def index
    @last_event = Event.last
  end
end
