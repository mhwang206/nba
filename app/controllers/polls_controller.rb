class PollsController < ApplicationController
  
  def index
  	@polls = Poll.all
  end
  
  def new
  	@poll = Poll.new
  end

  def create 
  	@poll = Poll.new(params.require(:poll).permit(:question, :image_url, :choice_one, :choice_two))
    if @poll.save 
  	redirect_to action: 'index'
    else
    flash[:notice] = "There is an error with your submission. Please make sure that the form is completely filled."
    render action: 'new'
    end
  end


  def destroy
  	# puts "******* " + params[:id]
  	Poll.find(params[:id]).destroy
	redirect_to polls_path
  end
end
