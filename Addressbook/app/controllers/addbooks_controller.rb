class AddbooksController < ApplicationController
	before_action :find_message, only: [:show, :edit, :update, :destroy]


	def index
		@addbooks = Addbook.all.order("created_at DESC")
	end

	def new
		@addbook = current_user.addbooks.build
	end

	def create
		@addbook = current_user.addbooks.build(addbook_params)
		if @addbook.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @addbook.update(addbook_params)
			redirect_to addbook_path
		else
			render 'edit'
		end
	end

	def destroy
		@addbook.destroy
		redirect_to root_path
	end


	private

	def addbook_params
		params.require(:addbook).permit(:title, :description)
	end

	
	def find_message
			@addbook = Addbook.find(params[:id])
	end




end
