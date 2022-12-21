class WorldcupsController < ApplicationController
  before_action :authenticate_user, only: [:update, :destory]
  before_action :set_worldcup, only: %i[ show update destroy ]

  # GET /worldcups
  # GET /worldcups.json
  def index
    @worldcups = Worldcup.all
  end

  # GET /worldcups/1
  # GET /worldcups/1.json
  def show
  end

  # POST /worldcups
  # POST /worldcups.json
  def create
    @worldcup = Worldcup.new(worldcup_params)

    if @worldcup.save
      render :show, status: :created, location: @worldcup
    else
      render json: @worldcup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /worldcups/1
  # PATCH/PUT /worldcups/1.json
  def update
    if @worldcup.update(worldcup_params)
      render :show, status: :ok, location: @worldcup
    else
      render json: @worldcup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /worldcups/1
  # DELETE /worldcups/1.json
  def destroy
    @worldcup.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worldcup
      @worldcup = Worldcup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def worldcup_params
      params.require(:worldcup).permit(:team, :stadium, :city)
    end
end
