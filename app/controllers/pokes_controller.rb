class PokesController < ApplicationController
  before_action :set_poke, only: [:show, :update, :destroy]

  # GET /pokes
  def index
    if logged_in? 
      @pokes = current_user.pokes
      render json: PokeSerializer.new(@pokes), status: :ok
    else
      render json: {
        error: "Must be logged in", status: :unathorized
      }
    end
  end

  # GET /pokes/1
  def show
    render json: @poke
  end

  # POST /pokes
  def create
    
    # raise "Landed"
   
    @poke = Poke.new(poke_params)

    if @poke.save
      render json: @poke, status: :created, location: @poke
    else
      response = {
        error: @poke.errors.full_messages.to_sentence
      }
      render json: response, status: :unprocessable_entity
    end
    #  @user = User.new(user_params)

    # if @user.save
    #   # render json: @user, status: :created, location: @user
    #   token = generate_token({id: @user.id})

    #         response = {
    #       user: UserSerializer.new(@user),
    #       jwt: token
    #     }

    #   render json: response
    # else
    #   response = {
    #     error: @user.errors.full_messages.to_sentence
    #   }
    #   render json: response, status: :unprocessable_entity
    # end
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
      params.require(:poke).permit(:name, :location, :found, :user_id)
    end
end
