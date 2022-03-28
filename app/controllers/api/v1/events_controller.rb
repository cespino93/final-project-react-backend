class Api::V1::EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    if logged_in?
    @events = current_user.events
    
    render json: EventSerializer.new(@events)
    else
      render json: {
        error: "You must be logged in to see trips"
      }
  end
end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    @event =  current_user.events.build(event_params)

    if @event.save
      render json: EventSerializer.new(@event), status: :created
    else
      error_resp = {
        error: @event.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: EventSerializer.new(@event), status: :ok
    else
      error_resp = {
      error: @event.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    if @event.destroy
      render json: { data: "Event destroyed" }, status: :ok
    else
      error_resp = {
        error: "Events not found and not destroyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:start_date, :end_date, :name )
    end
end
