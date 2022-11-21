class PostsController < ApplicationController
  before_action :authenticate_member!, except: %i[index show]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
  end

  def new
    @post = current_member.posts.build
  end

  def create
    @post = current_member.posts.build(user_params)

    if @post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:post).permit(:title, :body, :member_id)
  end
end
