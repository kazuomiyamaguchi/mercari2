class UsersController < ApplicationController

  before_action :set_user, only:[:prof, :identification, :mypage]

  def new
  end

  def show
  end

  def prof
  end

  def identification
  end

  def mypage
  end

  def payment
  end

  def credit
  end

  def logout
  end

  private
  def set_user
    @user = current_user
  end

end
