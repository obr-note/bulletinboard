class ResponsesController < ApplicationController
  
  def create
    @response = current_user.responses.new(response_params)

    if @response.save
      redirect_to tree_url(@response.tree_id), notice: "投稿「#{@response.text}」を登録しました"
    else
      render tree_url(@response.tree_id)
    end
  end

  private

  def response_params
    params.require(:response).permit(:text, :user_id, :tree_id)
  end
end