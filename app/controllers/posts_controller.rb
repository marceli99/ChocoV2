class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def index
    @posts = Post.order('created_at DESC')
  end
  def new
    @post = Post.new
  end
  def create
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::SmartyHTML)
    @post = Post.new(post_params)
    @post.content = markdown.render(@post.content)
    @post.save
    redirect_to root_path
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  def show
    @post = Post.find(params[:id])
  end
  private
  def post_params
    params.require(:post).permit(:id, :title, :content)
  end
end
