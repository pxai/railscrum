class TasksController < ApplicationController
  def create
    @story = Story.find(params[:task][:story_id])
    @board = Board.find(@story.board_id)
    @task = @story.tasks.create(tasks_params)
    redirect_to board_stories_path(@board,@story)
  end
 
  def show
        @task = Task.find(params[:id])
    end

    def edit
        @story = Story.find(params[:board_id])
        @task = Task.find(params[:id])
    end

    def update
        @story = Story.find(params[:board_id])
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_to @story
        else
            render 'edit'
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to story_path
    end

  private
    def tasks_params
      params.require(:task).permit(:title, :body)
    end
end
