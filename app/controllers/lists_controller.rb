class ListsController < RocketPants::Base

  version 1

  caches :index, :show, :caches_for => 5.minutes

  def index
    expose List.paginate(:page => params[:page])
  end

  def show
    expose List.find(params[:id])
  end

end