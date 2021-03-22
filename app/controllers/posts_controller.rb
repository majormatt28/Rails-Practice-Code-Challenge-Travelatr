class PostsController < ApplicationController
    def index
        @posts = Post.all
        #byebug
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to "/posts/#{@post.id}"
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
    end

    def delete
        @post = Post.find(params[:id])
        @post.destroy
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :likes)
    end
end