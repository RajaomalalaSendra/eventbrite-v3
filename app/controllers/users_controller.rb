class UsersController < ApplicationController

  def new
  	@user = User.new
  end
  def create
  	@user = User.new
  	@user.save(firt_name: params[:first_name], last_name: params[:last_name], description: params[:description], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
  	redirect_to root_path
  end
  def show
  end

  def edit
  end
  def update
  end
end
