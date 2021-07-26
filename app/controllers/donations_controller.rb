class DonationsController < ApplicationController
	before_action :authenticate_user!, except: :index
	
	def index
		@donations = Donation.all
		@donations = @donations.order("donation_tag")
	end
	
	def new
		@donation = Donation.new
	end
	
	def create #olhar o create novamente
		@donation = Donation.new(donation_params)
		@donation.status = true
		if @donation.save
			redirect_to dashboard_adm_path
		else
			render :new
		end
	end

	def edit
		@donation = Donation.find(params[:id])
	end
	
	def update #olhar o create novamente donations_controller
		@donation = Donation.find(params[:id])
		if @donation.update(donation_params)
			redirect_to dashboard_adm_path
		else
			render :edit
		end
	end
	
	def destroy
		@donation = Donation.find(params[:id])
		@donation.destroy

	end
	
	private

	def donation_params
		params.require(:donation).permit(:name, :description, :status, :amount, :donation_tag)	
	end
	
end
