class PgnateController < ApplicationController
  
  def show
    @pgnate = Pgnate.find(params[:id])
  end
    
  def new
    @pgnate = Pgnate.new
  end
end
