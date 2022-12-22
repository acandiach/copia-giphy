class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @boards = Board.all
  end

  def show
    board
  end

  def new
    @board = current_user.boards.build
  end

  def edit
    board
  end

  def create
    @board = current_user.boards.build(board_params)

    if @board.save
      redirect_to board_url(@board), notice: "Board was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if board.update(board_params)
      redirect_to board_url(@board), notice: "Board was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    board.destroy

    redirect_to boards_url, notice: "Board was successfully destroyed."
  end

  private

    def board
      @board = Board.find(params[:id])
    end

    def board_params
      params.require(:board).permit(:user_id, :publication_id)
    end
end
