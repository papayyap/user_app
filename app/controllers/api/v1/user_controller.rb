module Api
	module V1
		class UserController < ApplicationController
			def index
				@users = User
				#render json :{status: 'SUCCESS', message: 'Loaded users', data: users}, status: :ok
			end

			def show
				@user_object = User.all
				#render json :{status: 'SUCCESS' , message: 'Loaded users', data: users}, status: :ok
			end

			def create
                users = User.new(user_params)
            end

            def user_params
            	params.permit(:name, :password)
            end
      
		end
	end
end