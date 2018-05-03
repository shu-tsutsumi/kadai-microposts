class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:favorite_id])
    current_user.likes_reg(micropost)
    flash[:success] = 'お気に入りを登録しました'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:favorite_id])
    current_user.likes_unreg(micropost)
    flash[:success] = 'お気に入りを解除しました'
    redirect_back(fallback_location: root_path)
  end
end
