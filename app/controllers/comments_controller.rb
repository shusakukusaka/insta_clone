class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: :destroy
  
  def create
  @comment = current_user.comments.new(comment_params)
  #debugger
  if @comment.save
    flash[:success] = "コメントを投稿しました。"
    redirect_to root_url
  else
    flash[:alert] = "投稿に失敗しました。"
    redirect_to root_url
  end
  end
  
  def destroy
    @comment.destroy
    flash[:success] = "削除しました"
    redirect_to request.referrer || root_url
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
  
  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    redirect_to root_url if @comment.nil?
  end
end
