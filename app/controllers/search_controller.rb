class SearchController < ApplicationController

  def search
    @trees = Tree.tr_search(params[:search])
    @responses = Response.res_search(params[:search])
  end

end