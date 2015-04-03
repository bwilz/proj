class GuestsController < ApplicationController
  
  def new
    @guest = Guest.new
  end
  
    def show
      @guest = Guest.find(params[:id])
  end


def create
  @guest = Guest.new(guest_params)
  if @guest.save
          flash[:success] = "Thank you for your RSVP!"
    redirect_to :back
    else
      render 'new'
    end
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :additional, :wedding,
                                   :party)
    end
  
end
