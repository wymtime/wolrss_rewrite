class Api::SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if @user
      sign_in!(@user)
      #redirect_to root_url
      render "api/users/show", status: 200
      #render json: @user, status: 200
    else
      #flash.now[:errors] = ["Invalid username/password"]
      #render :new, status: 401
      render json: "wrong username/password", status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      sign_out!
      render "api/users/show"
    else
      render json: ["Nobody signed in"], status: 404
    end
  end
end
