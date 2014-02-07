class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
	    @user = User.new(params.require(:user).permit(:username, :password))
	    if @user.save
	      redirect_to polls_path, notice: "Thank you for signing up!"
	    else
	      flash[:notice] = "There is an error with your submission. Please make sure that the form is completely filled."
	      render 'new'
		end
	end
end





	# def create
	# 	User.create(params.require(:user).permit(:username, :password))
	# 	redirect_to users_path
	# end