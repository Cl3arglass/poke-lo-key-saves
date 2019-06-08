class PokesController < ApplicationController
  before_action :set_poke, only: [:show, :update, :destroy]

  # GET /pokes
  def index
    @pokes = Poke.all

    render json: @pokes
  end

  # GET /pokes/1
  def show
    render json: @poke
  end

  # POST /pokes
  def create
    @poke = Poke.new(poke_params)

    if @poke.save
      render json: @poke, status: :created, location: @poke
    else
      render json: @poke.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokes/1
  def update
    if @poke.update(poke_params)
      render json: @poke
    else
      render json: @poke.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokes/1
  def destroy
    @poke.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poke
      @poke = Poke.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poke_params
      params.require(:poke).permit(:name, :location, :found)
    end
end
