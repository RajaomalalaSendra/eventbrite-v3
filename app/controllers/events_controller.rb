class EventsController < ApplicationController
  def index
  end
  def new
  	@event = Event.new
  end
  def create
  	puts "aaaaaaaaaaaaaaaaaaaaa"
  	#@event = Event.new
  	#@event.save()
  	redirect_to "/"
  end
  def show
  end

end
