class Api::FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new(
      user_id: params[:user_id],
      position_id: params[:position_id],
    )
    if @favourite.save
      render json: { message: "This position was added to your favourites..." }
    else
      render json: { errors: @favourite.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    if @favourite.destroy
      render json: { message: "This position was successfuly removed..." }
    else
      render json: { errors: @favourite.errors.full_messages }
    end
  end
end
