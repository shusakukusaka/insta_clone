class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: :destroy
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "投稿しました。"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end
  
  def show
   @post = Post.find(params[:id])
   @comments = @post.comments.paginate(page: params[:page])
   @comment = current_user.comments.new
  end

  def destroy
    @post.destroy
    flash[:success] = "投稿を削除しました。"
    redirect_to request.referrer || root_url
  end
  
  private
  
  def post_params
    params.require(:post).permit(:content, :img)
  end
  
  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    redirect_to root_url if @post.nil?
  end
end
