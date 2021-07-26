class VolunteersController < ApplicationController
  def new
    @volunteer = Volunteer.new
  end
  
  def create
    @volunteer = Volunteer.new(volunteer_params)
    instanciate_solicitation

    if @volunteer.save
      @solicitation.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  def volunteer_params
    params.require(:volunteer).permit(:name, :email, :phone)
  end
  
  def instanciate_solicitation
    @solicitation = Solicitation.new
    @solicitation.volunteer = @volunteer
  end

end
