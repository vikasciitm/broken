class BcasController < ApplicationController
	def index
		@bcas=Bca.all
	end
	def new
		@bca=Bca.new
	end
	def create
		@bca=Bca.new(all_params)
		if @bca.save
			redirect_to bcas_path
		else
			render :new
		end
	end
	def edit
		@bca=Bca.find(params[:id])
	end
	def update
		@bca=Bca.find(params[:id])
		if @bca.update(all_params)
			redirect_to bcas_path
		else
			render :edit
		end
	end

	def destroy
	end

	private
	def all_params
		{first_name: params[:bca][:first_name],last_name: params[:bca][:last_name],year: params[:bca][:year],number: params[:bca][:number],email: params[:bca][:email]}
	end
end