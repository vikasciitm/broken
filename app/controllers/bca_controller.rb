class BcaController < ApplicationController
	def index
		@bcas=Bca.all
	end
end