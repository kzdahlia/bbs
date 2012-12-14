class PostsController < ApplicationController
  before_filter :get_user
  before_filter :get_board
  before_filter :get_post

  def index
    @posts = @board.posts.scoped
  end

  def show
  end

  def new
  end

  def create
    if @post.save
      redirect_to user_board_posts_path(@user, @board)
    else
      flash[:error] = @post.errors.full_message
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes params[:post]
      redirect_to user_board_posts_path
    else
      flash[:error] = @post.errors.full_message
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to user_board_posts_path
  end

  private

  def get_user
    @user = User.find params[:user_id]
  end

  def get_board
    @board = @user.boards.find params[:board_id]
  end

  def get_post
    if params[:id]
      @post = @board.posts.find params[:id]
    else
      @post = @board.posts.new params[:post]
    end
  end
end
