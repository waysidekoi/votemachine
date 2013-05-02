class UsersController < ApplicationController

  def create
    if params[:user][:first_name].blank?
      redirect_to(root_path, notice: "hey how about a name?")
    else
      @user = User.find_or_create_by_first_name(params[:user][:first_name].downcase)
      session[:current_user_id] = @user.id
      redirect_to @user
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def admin
    # if @user.admin?
    @ideas = Idea.all
      # render :text => @ideas
      render "admin"
    # end
  end
  
end
