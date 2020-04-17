class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      city: params[:city],
      gym: params[:gym],
      afiliation: params[:afiliation],
      avatar: params[:avatar],
      roll_time: params[:roll_time],
      belt: params[:belt],
    )
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.city = params[:city] || @user.city
    @user.gym = params[:gym] || @user.gym
    @user.afiliation = params[:afiliation] || @user.afiliation
    @user.avatar = params[:avatar] || @user.avatar
    @user.roll_time = params[:roll_time] || @user.roll_time
    @user.belt = params[:belt] || @user.belt

    if @user.save
      render "show.json.jb"
    else
      render json: { errors: errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: { message: "User successfuly destroyed..." }
    end
  end
end
