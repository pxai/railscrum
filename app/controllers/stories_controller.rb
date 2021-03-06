class StoriesController < ApplicationController
    def create
        @board = Board.find(params[:board_id])
        @story = @board.stories.create(story_params)
        redirect_to board_path(@board)
    end
    def index
        @story = Story.find(params[:id])
        @task = Task.new
        @task.story_id = @story.id       
    end
    def show
        @story = Story.find(params[:board_id])
        @task = Task.new
        @task.story_id = @story.id
    end

    def edit
        @board = Board.find(params[:id])
        @story = Story.find(params[:board_id])
    end

    def update
         @board = Board.find(params[:board_id])
        @story = Story.find(params[:id])
        if @story.update(story_params)
            redirect_to @board
        else
            render 'edit'
        end
    end


    def destroy
        @story = Story.find(params[:board_id])
        @story.destroy
        redirect_to board_path
    end

  private
    def story_params
      params.require(:story).permit(:title, :body)
    end
end
