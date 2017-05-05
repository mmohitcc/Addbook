class AddbooksController < ApplicationController
	before_action :find_message, only: [:show, :edit, :update, :destroy]


	def index
		@addbooks = Addbook.all.order("created_at DESC")
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

	def show
	end



	private

	def addbook_params
		params.require(:addbook).permit(:title, :description)
	end

	
	def find_message
			@addbook = Addbook.find(params[:id])
	end




end
