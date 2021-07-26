class UsersController < ApplicationController
  before_action :autenticate_user!

  def dashboard_adm
    @volunteers = Volunteer.all
    @donations = Donation.all
    @orders = Order.all
  end

  def dashboard_user
  end
  
end

