class PgnatesController < ApplicationController
  
  def show
    @pgnate = Pgnate.find(params[:id])
  end
    
  def new
    @pgnate = Pgnate.new
  end
  
  def create
    @pgnate = Pgnate.new(pgnate_params)
    if @pgnate.save
      flash[:info] = "You added a page."
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def index
    @post = Pgnate.paginate(:page => params[:page], :per_page => 20)
  end

  private

  def pgnate_params
    params.require(:pgnate).permit(:pname, :content)
    end
  
end
