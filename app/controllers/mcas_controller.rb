class McasController < ApplicationController
	def index
		@mcas=Mca.all
	end
	def new
		@mca=Mca.new
	end
end