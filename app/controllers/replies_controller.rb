class RepliesController < ApplicationController
  before_filter :get_user
  before_filter :get_board
  before_filter :get_post
  before_filter :get_reply

  def index
    @replies = @post.replies.scoped
  end

  def new
  end

  def create
    if @reply.save
      redirect_to user_board_post_replies_path(@user, @board, @post)
    else
      flash[:error] = @reply.errors.full_messages
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @reply.update_attributes params[:reply]
      redirect_to user_board_post_replies_path(@user, @board, @post)
    else
      flash[:error] = @reply.errors.full_messages
      render :edit
    end
  end

  def destroy
    @reply.destroy
    redirect_to user_board_post_replies_path(@user, @board, @post)
  end

  private

  def get_user
    @user = User.find params[:user_id]
  end

  def get_board
    @board = @user.boards.find params[:board_id]
  end

  def get_post
    @post = @board.posts.find params[:post_id]
  end

  def get_reply
    if params[:id]
      @reply = @post.replies.find params[:id]
    else

      @reply = @post.replies.new params[:reply]
    end
  end
end
