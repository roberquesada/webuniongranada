class SiteController < ApplicationController
  def index
    @last_event = Event.limit(1).first
  end
end
