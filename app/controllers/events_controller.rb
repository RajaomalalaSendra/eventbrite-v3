require 'time'
class EventsController < ApplicationController
  def index
  end
  def new
  	@event = Event.new
  end
  def create
  	@date = Time.parse(params[:start_date])
  	@event = Event.new(start_date: @date, duration: params[:duration].to_i, title: params[:title], description: params[:description], price: params[:price].to_i, location: params[:location], user_id: current_user.id)
  	@event.save
  	puts "*" * 30
  	@event.errors.full_messages.each do |error|
  		puts error
  	end
  	puts "*" * 30
  	redirect_to "/"
  end
  def show
  end

end
