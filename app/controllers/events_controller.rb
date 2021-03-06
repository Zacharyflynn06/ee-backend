class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    @events = Event.all

    render json: EventSerializer.new(@events)
  end

  # GET /events/1
  def show
    render json: EventSerializer.new(@event)
  end

  # POST /events
  def create
    
    @event = Event.new(event_params)

    if @event.save
      render json: EventSerializer.new(@event), status: :created, location: @event
    else
      # byebug
      render json: @event.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    
    if @event.update(event_params)
      render json: EventSerializer.new(@event)
    else
      render json: @event.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    
    if @event.destroy
      render json: EventSerializer.new(@event)
      
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.permit( :id, :name, :ticket_link, :description, :lineup, :date, :venue_name, :city, :state)
    end
end
