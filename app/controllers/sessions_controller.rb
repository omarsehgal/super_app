class SessionsController < ApplicationController
  def new
  end
  
  def create
  	user = User.authenticate(params[:session][:email], params[:session][:password])
  	if user.nil?
  		flash[:error] = "Invalid email/password combination."
  		@title = "Sign in"
  		render 'new'
  	else
  		flash[:success] = "Welcome back #{user.name}!"
  		redirect_to user_path(user)
  	end
  end
  
  def destroy
  end

end
