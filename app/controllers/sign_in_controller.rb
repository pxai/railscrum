class SignInController < ApplicationController
  def signin
    if params[:login] == 'josua'
      redirect_to home_home_path
    else
      flash[:notice] = "Login incorrect: " , params[:login]
      redirect_to root_path
    end
  end
end
