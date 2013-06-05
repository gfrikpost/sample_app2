<<<<<<< HEAD
class MicropostsController < ApplicationController
  before_filter :signed_in_user
  
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  def destroy
  end
end
=======
class MicropostsController < ApplicationController
  before_filter :signed_in_user

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
>>>>>>> 426d1f5d66ed4d0e98c87b3d4ca88430cea09651
