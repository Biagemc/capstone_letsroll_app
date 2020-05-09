class Api::PositionsController < ApplicationController
  def index
    @positions = Position.where("name LIKE ?", "%#{params[:search]}%")
    if params[:tag]
      tag = params[:tag].split(",")
      tags = Tag.where(id: tag)
      @positions = tags.map { |value| value.positions }.flatten
      render "index.json.jb"
    elsif params[:type]
      tag = params[:type]
      @positions = Position.where("situation LIKE ?", "%#{params[:type]}%")
    else
      @positions = Position.all.order(:name)
      render "index.json.jb"
    end
  end

  def create
    @position = Position.new(
      name: params[:name],
      url: params[:url],
      description: params[:description],
      user_id: params[:user_id],
      situation: params[:situation],
    )

    if @position.save
      @position.post = Post.new()
      render "show.json.jb"
    else
      render json: { errors: errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @position = Position.find(params[:id])
    render "show.json.jb"
  end

  def update
    @position = Position.find(params[:id])
    @position.name = params[:name] || @position.name
    @position.url = params[:url] || @position.url
    @position.description = params[:description] || @position.description
    @position.user_id = params[:user_id] || @position.user_id
    @position.situation = params[:situation] || @position.situation

    if @position.save
      render "show.json.jb"
    else
      render json: { errors: errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @position = Position.find(params[:id])
    if @position.destroy
      render json: { message: "Position successfuly destroyed..." }
    end
  end
end
