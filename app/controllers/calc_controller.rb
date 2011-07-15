class CalcController < ApplicationController
  def index
	if params[:errors]
		@errors = true
	end
	@user = User.new
  end

  def compute
	@user = User.new(params[:user])
	if @user.save
		#success
	else
		redirect_to :action => 'index', :errors => true
	end
  end

end
