class RelationshipController < ApplicationController
    def create
        current_user.follow(params[:user_id])
        redirect_to request.referer
    end     
    
    def destroy
        current_user.unfloow(params[:user_id])
        redirectc_to request.referer
    end     
end
