class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.where("post_id == ?", "%#{params[:post]}%")
    if params[:post]
      @comments = Comment.find_by(params[:post_id])
      render "index.json.jb"
    else
      @comments = Comment.all
      render "index.json.jb"
    end
  end

  def create
    @comment = Comment.new(
      content: params[:content],
      user_id: params[:user_id],
      post_id: params[:post_id],
    )
    if @comment.save
      render "show.json.jb"
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
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
      render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render json: { message: "Comment successfuly destroyed..." }
    end
  end
end
