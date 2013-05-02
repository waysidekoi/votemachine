class IdeasController < ApplicationController
  def index
    @ideas = Idea.all

    respond_to do |format| 
      format.json { render :json => @ideas.to_json(:only=>:description) }
      format.html
    end

  end  
  
  def create
    user = User.find_or_create_by_first_name(params[:idea][:presenter])
    
    idea = user.ideas.create(description: params[:idea][:description])

    
    redirect_to(:back)
  end
end
