class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		if current_user
			redirect_to polls_path
		else
			@user = User.new
		end
	end

	def create
	    @user = User.new(params.require(:user).permit(:username, :password))
	    if @user.save
	    		user = User.find_by(username: params[:user][:username])
				if user != nil && user.authenticated?(params[:user][:password])
					session[:user_id] = user.id
		      redirect_to polls_path, notice: "Thank you for signing up!"
		    end
	    else
	      flash[:notice] = "Oops something went wrong. Try again!"
	      render 'new'
			end
	end #create

	def show
		@user = User.find(params[:id])
		@polls = @user.polls
	end
end

	# def create
	# 	User.create(params.require(:user).permit(:username, :password))
	# 	redirect_to users_path
	# end
