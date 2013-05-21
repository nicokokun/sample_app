class UserController < ApplicationController
  def new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(params[:id])
  		# Handle a successful update
	else
		render 'edit'
	end
  end
end
