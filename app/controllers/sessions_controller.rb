class SessionsController < ApplicationController
	def create
		@user = User.find_by(email: params[:email])

		if @user && @user.authenticate(params[:password])
			token = generate_token({id: @user.id})

            response = {
		      user: UserSerializer.new(@user),
		      jwt: token
		    }

			render json: response
		else 
			render json: {
				error: "Invalid Credentials"
			}, status: :unauthorized
		end
	end

  def get_current_user
    if logged_in?
      render json: {
          user: UserSerializer.new(current_user)
        }, status: :ok
    else
      render json: {error: "No current user"}
    end
  end
end
