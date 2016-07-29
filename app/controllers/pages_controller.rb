# The Pages controller contains all of the code for any page inside /pages
class PagesController < ApplicationController

  # back-end code for pages/index
  def index
  end

  # back-end code for pages/home
  def home
  end

  # back-end code for pages/profile
  def profile
    if (User.find_by_username(params[:id]))
      # Grab username from the URL as :id
      @username = params[:id]
    else
      # Redirect to a 404 {root for now}
      redirect_to root_path, :notice => "User not found!"
    end
  end

  # back-end code for pages/explore
  def explore
  end

end
