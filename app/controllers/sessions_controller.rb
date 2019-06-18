class SessionsController < ApplicationController
	def create
		@user = User.find_by(email: params[:user][:email])

		if @user && @user.authenticate(params[:user][:password])
			render json: {
				name: @user.name,
				email: @user.email,
				id: @user.id
			} 
		else 
			render json: {
				error: "Invalid Credentials"
			}, status: :unauthorized
		end
	end

	def delete

	end
end
