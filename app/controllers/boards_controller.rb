class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end
  
  def show
    @board = Board.find(params[:id])
  end

  def new
  end
  
  def create
         #render plain: params[:board].inspect
         #@board = Board.new(params[:board])
          # @board = Board.new(params.require(:board).permit(:title, :text))
    @board.save
    redirect_to @board
  end

  def create
    @board = Board.new(board_params)

    if @board.save
        redirect_to @board
    else
        render 'new'
    end
  end

def edit
  @board = Board.find(params[:id])
end

def update
  @board = Board.find(params[:id])
  if @board.update(board_params)
    redirect_to @board
  else
    render 'edit'
  end
end

def destroy
  @board = Board.find(params[:id])
  @board.destroy
 
  redirect_to boards_path
end

  private
  def board_params
    params.require(:board).permit(:title, :text)
   end
end
