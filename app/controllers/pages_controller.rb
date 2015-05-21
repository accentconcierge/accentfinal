class PagesController < ApplicationController
	def index
		
	end

	def destroy
    @user.destroy
    redirect_to index_url
  end

  def user_history
  	@service_histories = ServiceHistory.all
  	
  end

  


end