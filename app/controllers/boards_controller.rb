class BoardsController < ApplicationController
  before_filter :get_user
  before_filter :get_board

  def index
    @boards = @user.boards.scoped
  end

  def show
  end

  def new
  end

  def create
    if @board.save
      redirect_to user_boards_path(@user)
    else
      flash[:error] = @board.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @board.update_attributes params[:board]
      redirect_to user_boards_path(@user)
    else
      flash[:error] = @board.errors.full_messages
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to user_boards_path(@user)
  end

  private

  def get_user
    @user = User.find params[:user_id]
  end

  def get_board
    if params[:id]
      @board = @user.boards.find params[:id]
    else
      @board = @user.boards.new params[:board]
    end
  end

end
