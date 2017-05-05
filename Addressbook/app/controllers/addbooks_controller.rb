class AddbooksController < ApplicationController

	def index

	end

	def new
		@addbook = Addbook.new
	end

	def create
		@addbook = Addbook.new(addbook_params)
		if @addbook.save
			redirect_to root_path
		else
			render 'new'
		end
	end



	private

	def addbook_params
		params.require(:addbook).permit(:title, :description)
	end

end
