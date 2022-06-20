class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:start_time, :pain_id, :stretch_if, :training_id, :posture_id, :meal_id, :motion_id, :smoking_id, :postscript)
  end
end
