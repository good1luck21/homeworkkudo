class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    
    @created_at = @post.created_at + 9.hours

    puts @created_at
  end

  def search
    @posts = Post.where('title LIKE(?)', "%#{params[:keyword]}%")
    respond_to do |format|
      format.json { render json: @posts }
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to index_path
    else
      render 'new'
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
