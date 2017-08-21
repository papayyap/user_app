module Api
	module V1
		class UserController < ApplicationController
			skip_before_action :verify_authenticity_token
			def index
				@users = User
				#render json :{status: 'SUCCESS', message: 'Loaded users', data: users}, status: :ok
			end

			def show
				@user_object = User.all
				#render json :{status: 'SUCCESS' , message: 'Loaded users', data: users}, status: :ok
			end

			def create
                user = User.new(user_params)
                if user.save
                   render json: {status: "SUCCESS", message: "Saved User", data:user},status: :ok
                else
                   render json: {status: "FAIL", message: "User not saved", data:user.errors},status: :not_processed
               end
            end

            def user_params
            	params.permit(:name, :password)
            end
      
		end
	end
end