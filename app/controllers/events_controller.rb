class EventsController < ApplicationController
  before_action :set_beginning_of_week
  
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

  def show
    @event = Event.find(params[:id])
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to root_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path, notice:"削除しました"
  end

  private

  def event_params
    params.require(:event).permit(:start_time, :pain_id, :stretch_id, :training_id, :posture_id, :meal_id, :motion_id, :smoking_id, :postscript)
  end

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end
end
