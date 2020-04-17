class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render "index.json.jb"
  end

  def create
    @comment = Comment.new(
      content: params[:content],
      user_id: params[:user_id],
    )
    if @comment.save
      render "show.json.jb"
    else
      render json: { errors: errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @comment = Comment.find(params[:id])
    render "show.json.jb"
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.content = params[:content] || @comment.content
    @comment.user_id = params[:user_id] || @comment.user_id

    if @comment.save
      render "show.json.jb"
    else
      render json: { errors: errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render json: { message: "Comment successfuly destroyed..." }
    end
  end
end
