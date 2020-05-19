class Api::PositionsController < ApplicationController
  def index
    @positions = Position.where("name LIKE ?", "%#{params[:search]}%")
    if params[:tag] && params[:type]
      # binding.pry
      tag_ids = JSON.parse(params[:tag])
      @tags = Tag.where(id: tag_ids)
      @tags = @tags.map { |tag| tag.name }
      @positions = Position.joins(:tags).where(tags: { "name" => @tags }, situation: params[:type])
      render "index.json.jb"
    elsif params[:tag]
      tag_ids = JSON.parse(params[:tag])
      tags = Tag.where(id: tag_ids)
      @positions = tags.map { |value| value.positions }.flatten
      render "index.json.jb"
    elsif params[:type]
      @positions = Position.where(situation: params[:type])
      render "index.json.jb"
    else
      @positions = Position.all.order(:name)
    end
    render "index.json.jb"
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
      @position.post = Post.create!(position_id: @position.id)
      if params[:tag]
        position_tags = params[:tag]
        position_tags.each do |tag|
          position_tag = PositionTag.create!(tag_id: tag, position_id: @position.id)
        end
      end
      tag =

        render "show.json.jb"
    else
      render json: { errors: @position.errors.full_messages }, status: :unprocessable_entity
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
      old_tags = PositionTag.where(position_id: @position.id).destroy_all
      tags = params[:tag]
      tags.each do |tag|
        position_tag = PositionTag.create!(tag_id: tag, position_id: @position.id)
      end

      render "show.json.jb"
    else
      render json: { errors: @position.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @position = Position.find(params[:id])
    if @position.destroy
      render json: { message: "Position successfuly destroyed..." }
    end
  end
end
