class NotificationsController < ApplicationController

  def show
  	@notification = Notification.find(params[:id])
	end

	def new
		@notification = Notification.new
	end

	def create
    @client.messages.create(
  	from: '+14159341234',
  	to: '+12403485428',
  	body: 'Hey there!'
	)	
  end



  private
  def notification_params
    #what are the params needed to make a new notification? (refer to your model)
  end
end





