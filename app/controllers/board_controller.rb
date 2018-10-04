class BoardController < ApplicationController
	def voting  
		@pollit = Pollit.all 
	end 

	def create
		@pollit = Pollit.new 
		@pollit.name = params[:name]
		@pollit.vote = 0
		@pollit.save


		redirect_to board_voting_url
	end

	def destroy
		@pollit = Pollit.find params[:id]
		@pollit.destroy
	

		redirect_to board_voting_url
	end 
	
	def update
		@pollit = Pollit.find params[:id] 
		@pollit.vote += 1
		@pollit.save

		redirect_to board_voting_url
	end
end
