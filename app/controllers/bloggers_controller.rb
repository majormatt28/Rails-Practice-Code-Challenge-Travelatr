class BloggersController < ApplicationController
    def index
        @bloggers = Blogger.all
    end

    def show
        @blogger = Blogger.find(params[:id])
    end

    def new
        @blogger = Blogger.new
    end

    def create
        @blogger = Blogger.create(blogger_params)

        redirect_to "/bloggers/#{@blogger.id}"
    end

    def edit
        @blogger = Blogger.find(params[:id])
    end

    def update
        @blogger = Blogger.find(params[:id])

        @blogger.update(blogger_params)
    end

    def delete
        @blogger = Blogger.find(params[:id])

        @blogger.destroy
    end

    private

    def blogger_params
        params.require(:blogger).permit(:name, :bio)
    end
end