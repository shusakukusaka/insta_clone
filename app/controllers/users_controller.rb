class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.paginate(page: params[:page])
    #@words = Word.page(params[:page]).per(PER)
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "ユーザーを削除しました。"
    redirect_to users_url
  end
end
