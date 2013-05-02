class User < ActiveRecord::Base
  attr_accessible :first_name

  

  has_many :ideas

  def admin?
    true
    # user = User.find(session[:current_user_id])
    # user.admin
  end
end
