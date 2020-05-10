class Api::PostController < ApplicationController
  def show
    post = Post.find(params[:id])
    @comments = post.comments
    render "show.json.jb"
  end
end
