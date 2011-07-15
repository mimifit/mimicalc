class CalcController < ApplicationController
  
  def compute
	if params[:user]
		@user = User.new(params[:user])
		if @user.valid?
			@bmr = @user.get_bmr
			User.new(params[:user]).save if params[:first_time]
		else
			@errors = @user.get_errors
			@first_time = 1 if params[:first_time]
		end
	else
		@user = User.new
		@first_time = 1
	end
  end

end
