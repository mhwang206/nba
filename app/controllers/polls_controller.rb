class PollsController < ApplicationController
  
  def index
  	@polls = Poll.all
  end
  
  def destroy
  	# puts "******* " + params[:id]
  	Poll.find(params[:id]).destroy
	redirect_to polls_path
  end

end
