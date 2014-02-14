class PollsController < ApplicationController
  
  def index
    if current_user
  	 @polls = Poll.all
    else 
      redirect_to new_user_path
    end
  end
  
  def new
  	@poll = Poll.new
  end

  def show
    @poll = Poll.find(params[:id])
  end


  def create 
  	@poll = Poll.new(poll_params)
    current_user.polls << @poll 
    if @poll.save 
  	redirect_to action: 'index'
    else
    flash[:notice] = "There is an error with your submission. Please make sure that the form is completely filled."
    render action: 'new'
    end
  end

  def edit 
    @poll = Poll.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])
    if @poll.update_attributes(poll_params)
    redirect_to action: 'index'
    else 
    render action: 'edit'
    end
  end

  def destroy
  	# puts "******* " + params[:id]
  	Poll.find(params[:id]).destroy
  	redirect_to polls_path
  end


  private 

  def poll_params
    params.require(:poll).permit(:creator, :question, :image_url, :choice_one, :choice_two)
  end
end
