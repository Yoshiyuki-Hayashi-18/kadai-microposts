class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favo(micropost)
    flash[:success] = 'お気に入り登録しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavo(micropost)
    flash[:success] = 'お気に入り解除しました。'
  end
  
end
