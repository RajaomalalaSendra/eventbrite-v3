class EventsController < ApplicationController
  def index
  end
  def new
  	@event = Event.new
  end
  def create
  	@event = Event.new
  	@event.save()
  	redirect to "/"
  end
  def show
  end

end
