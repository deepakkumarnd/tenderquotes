class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.search(params[:query]).order('created_at DESC').page(params[:page]).per(20)
  end

  def show
  end

  def new
    @post = current_user.posts.new
  end

  def edit
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.sanitize_post!

    if @post.save
      format.html { redirect_to @post, notice: 'Post was successfully created.' }
    else
      format.html { render action: 'new' }
    end
  end

  def update
    if @post.update(post_params)
      format.html { redirect_to @post, notice: 'Post was successfully updated.' }
    else
      format.html { render action: 'edit' }
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
