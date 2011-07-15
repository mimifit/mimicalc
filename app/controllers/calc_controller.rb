class CalcController < ApplicationController
  
  def compute
	if params[:user]
		@user = User.new(params[:user])
		if @user.valid?
			@bmr = @user.age * 10
		else
			@error = "not valid" unless @user.valid? 
		end
	else
		@user = User.new
	end
  end

end
