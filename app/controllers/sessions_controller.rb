class SessionsController < ApplicationController
	def create
		@user = User.find_by(email: params[:user][:email])

		if @user && @user.authenticate(params[:user][:password])
			token = generate_token({id: @user.id})

            response = {
		      user: user_serializer(@user),
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
          user: user_serializer(current_user)
        }, status: :ok
    else
      render json: {error: "No current user"}
    end
  end
end
