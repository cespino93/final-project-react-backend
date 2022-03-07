class Api::V1::CelebritiesController < ApplicationController
  before_action :set_celebrity, only: [:show, :update, :destroy]

  # GET /celebrities
  def index
    @celebrities = Celebrity.all

    render json: @celebrities
  end

  # GET /celebrities/1
  def show
    render json: @celebrity
  end

  # POST /celebrities
  def create
    @celebrity = Celebrity.new(celebrity_params)

    if @celebrity.save
      render json: @celebrity, status: :created, location: @celebrity
    else
      render json: @celebrity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /celebrities/1
  def update
    if @celebrity.update(celebrity_params)
      render json: @celebrity
    else
      render json: @celebrity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /celebrities/1
  def destroy
    @celebrity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebrity
      @celebrity = Celebrity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def celebrity_params
      params.require(:celebrity).permit(:name, :description, :location_id)
    end
end
