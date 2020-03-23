class TreesController < ApplicationController
  
  def index
    @trees = Tree.all.order(created_at: :desc)
  end

  def show
    @tree = Tree.find(params[:id])
    @response = Response.new(:tree_id => params[:id])
    @responses = @tree.responses.all
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = current_user.trees.new(tree_params)

    if @tree.save
      redirect_to trees_url, notice: "スレッド「#{@tree.title}を登録しました"
    else
      render :new
    end
  end

  private

  def tree_params
    params.require(:tree).permit(:title, category_ids: [])
  end
end