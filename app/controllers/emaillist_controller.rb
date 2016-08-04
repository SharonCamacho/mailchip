class EmaillistController < ApplicationController
	def subscribe
    @list_id = 'cdbd08ae03'
    gibbon = Gibbon::Request.new(api_key: "f6cd67c410f811a48863bafd5d9eb1d1-us1")

    gibbon.lists(@list_id).members.create(  
      body: {
        email_address: params[:email][:address],
        status: "subscribed"
      }
    )
	end
end
