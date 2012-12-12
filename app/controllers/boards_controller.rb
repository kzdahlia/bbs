class BoardsController < ApplicationController
  before_filter :get_board

  def index
    @boards = Board.scoped
  end

  def show
    
  end

  def new
  end

  def create
    if @board.save
      redirect_to boards_path
    else
      flash[:error] = @board.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @board.update_attributes params[:board]
      redirect_to boards_path
    else
      flash[:error] = @level.errors.full_messages
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_path
  end

  private

  def get_board
    if params[:id]
      @board = Board.find params[:id]
    else
      @board = Board.new params[:board]
    end
  end

end
