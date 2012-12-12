class UsersController < ApplicationController
  before_filter :get_user

  def index
    @users = User.scoped
  end

  def new
  end

  def create
    if @user.save
      redirect_to users_path
    else
      flash[:error] = @user.errors.full_messages
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes params[:user]
      redirect_to users_path
    else
      flash[:error] = @user.errors.full_messages
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end



  private

  def get_user
    if params[:id]
      @user = User.find params[:id]
    else
      @user = User.new params[:user]
    end
  end

end
